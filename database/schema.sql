CREATE DATABASE discordbottest;

CREATE TABLE Guilds (
    guildId VARCHAR(100) NOT NULL PRIMARY KEY,
    guildOwnerId VARCHAR(100) NOT NULL,
    createdAt DATE NOT NULL,
    guildName VARCHAR(100) NOT NULL

);

CREATE TABLE GuildConfigurable (
    cmdPrefix VARCHAR(10) DEFAULT '+',
    guildId VARCHAR(100) NOT NULL,
    FOREIGN KEY (guildId) REFERENCES Guilds(guildId)
);