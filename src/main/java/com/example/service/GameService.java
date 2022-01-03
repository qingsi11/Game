package com.example.service;

import com.example.bean.Game;
import org.apache.ibatis.annotations.Param;

import java.util.Collection;
import java.util.List;

public interface GameService {

    Game queryGamebyId( Integer id);

    List<Game> queryAllGames();


    void saveGame(Game game);

    Collection<Game> search(String searchString);

    Game getGame(Integer id);

    void updateGame(Game game);

    void deleteGameById(Integer id);
}
