/*
==============================================================
SPOTIFY DATA TABLE CREATION SCRIPT
==============================================================

Purpose:
This script creates the raw Spotify_data table used for SQL analysis and practice.
The table stores Spotify track-level metadata, engagement metrics, audio features,
and platform performance indicators.

This table serves as the foundational dataset for all analytical queries in the project
and is structured to support filtering, aggregation, trend analysis, and performance reporting.

What this script includes:
1. Safe table deletion to reset the environment
2. Clean table creation using appropriate data types
3. Well-structured schema for analytical querying

Note:
Run the DROP statement before CREATE when resetting the dataset.
Use IF EXISTS / IF NOT EXISTS to make the script reusable and safe.

==============================================================
TABLE RESET
==============================================================
*/

-- Drop existing table if it already exists
DROP TABLE IF EXISTS spotify_data;


/*
==============================================================
TABLE CREATION
==============================================================
*/

-- Create main Spotify analytics table
CREATE TABLE IF NOT EXISTS spotify_data (
    artist              VARCHAR(50),
    track               VARCHAR(250),
    album               VARCHAR(250),
    album_type          VARCHAR(50),

    danceability        FLOAT,
    energy              FLOAT,
    loudness            FLOAT,
    speechiness         FLOAT,
    acousticness        FLOAT,
    instrumentalness    FLOAT,
    liveness            FLOAT,
    valence             FLOAT,
    tempo               FLOAT,
    duration_min        FLOAT,

    title               VARCHAR(250),
    channel             VARCHAR(100),

    views               BIGINT,
    likes               BIGINT,
    comments            BIGINT,

    licensed            BOOLEAN,
    official_video      BOOLEAN,

    stream              BIGINT,

    energy_liveness     FLOAT,
    most_playedon       VARCHAR(20)
);


/*
==============================================================
SCHEMA OVERVIEW
==============================================================

Column Categories:

1. Track Metadata
   - artist
   - track
   - album
   - album_type
   - title
   - channel

2. Audio Features
   - danceability
   - energy
   - loudness
   - speechiness
   - acousticness
   - instrumentalness
   - liveness
   - valence
   - tempo
   - duration_min
   - energy_liveness

3. Engagement Metrics
   - views
   - likes
   - comments
   - stream

4. Platform / Content Indicators
   - licensed
   - official_video
   - most_playedon

==============================================================
ONE-LINE PURPOSE
==============================================================

Purpose:
To create the foundational Spotify analytics table used for storing raw music streaming,
engagement, and audio-feature data for SQL-based analysis.

==============================================================
END OF FILE
==============================================================
*/
