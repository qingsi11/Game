package com.example.dao;

import com.example.bean.Game;
import org.apache.ibatis.annotations.Param;

import java.util.Collection;
import java.util.List;

public interface GameDao {

    Game queryGamebyId(@Param("id") Integer id);

    List<Game> queryAllGames();

    void insertGame(Game game);


    Collection<Game> selectGameByMessage(String searchString);

    void updateGame(Game game);

    void deleteGameById(Integer id);
}
