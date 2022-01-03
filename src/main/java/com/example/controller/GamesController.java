package com.example.controller;

import com.example.bean.Game;
import com.example.bean.Msg;
import com.example.dao.GameDao;
import com.example.service.GameService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.GsonBuilderUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

@Controller
public class GamesController {
    @Autowired
    GameService gameService;


    /**
     * 删除游戏
     * @param id
     * @return
     */
    @RequestMapping(value = "/game/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteGameById(@PathVariable("id") Integer id){
       gameService.deleteGameById(id);
        return Msg.success();
    }


    /**
     * 更新游戏
     * @return
     */
    @RequestMapping(value = "/game/{id}",method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateGame(Game game){
        System.out.println(game);
        gameService.updateGame(game);
        return Msg.success();
    }

    /**
     * 按照游戏id查询
     */
    @RequestMapping(value = "/game/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Msg getGame(@PathVariable("id") Integer id){
        Game game = gameService.getGame(id);
        return Msg.success().add("game", game);
    }

    /**
     * 游戏保存
     * @return
     */
    @RequestMapping(value = "/game",method = RequestMethod.POST)
    @ResponseBody
    public Msg sayGame(Game game){
        gameService.saveGame(game);
        return Msg.success();
    }


    /**
     * 管理页面，查询信息
     * @param pn
     * @return
     */
    @RequestMapping("/tohome")
    @ResponseBody
    public Msg getGameWithJson(@RequestParam(value = "pn",defaultValue = "1") Integer pn){
        PageHelper.startPage(pn,5);
        List<Game> games = gameService.queryAllGames();
        PageInfo pageInfo = new PageInfo(games);
        return Msg.success().add("pageInfo",pageInfo);
    }


    /**
     * 分页查询
     * @param pn
     * @param model
     * @return
     */
    @RequestMapping("/togame/{pn}")
    public String toHome(@PathVariable(value = "pn") Integer pn, Model model){

        PageHelper.startPage(pn,3);

        List<Game> games = gameService.queryAllGames();
        PageInfo pageInfo = new PageInfo(games);
        model.addAttribute("pageInfo", pageInfo);
       // System.out.println(pageInfo.getPageSize());
        //return "control";
       return "forward:/home.jsp";
    }


    /**
     * 搜素
     * @param search
     * @param model
     * @return
     */
    @RequestMapping("/toSearch")
    //@ResponseBody
    public String toSearch(String search,Model model){
        Collection<Game> games = gameService.search("%" + search + "%");
        model.addAttribute("games", games);
        System.out.println(games);
        return "search";
    }




    @RequestMapping("/toGameCenter")
    public String toGameCenter(){




        return "gameCenter";
    }


  // @RequestMapping("/togame")
    public String toGame(@PathVariable(value = "pn") Integer pn, Model model){
        PageHelper.startPage(pn,3);
        List<Game> games = gameService.queryAllGames();
        PageInfo<Game> pageInfo = new PageInfo<>(games);
        model.addAttribute("pageInfo", pageInfo);
        return "forward:/home.jsp";
    }

}
