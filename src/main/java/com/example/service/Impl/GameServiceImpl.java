package com.example.service.Impl;

import com.example.bean.Game;
import com.example.dao.GameDao;
import com.example.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;

@Service
public  class GameServiceImpl implements GameService {

    @Autowired
    GameDao gameDao;

    @Override
    public Game queryGamebyId(Integer id) {
        Game game = gameDao.queryGamebyId(id);
        return game;
    }

    @Override
    public List<Game> queryAllGames() {
        List<Game> games = gameDao.queryAllGames();
        return games;
    }

    @Override
    public void saveGame(Game game) {
        gameDao.insertGame(game);
    }

    @Override
    public Collection<Game> search(String searchString) {
        Collection<Game> games = gameDao.selectGameByMessage(searchString);
        return games;

    }

    @Override
    public Game getGame(Integer id) {
        Game game = gameDao.queryGamebyId(id);
        return game;
    }

    @Override
    public void updateGame(Game game) {
        gameDao.updateGame(game);

    }

    @Override
    public void deleteGameById(Integer id) {
        gameDao.deleteGameById(id);
    }


}
