# find_package(Dialyzer)
# find_package(Elixir)
# find_package(Gleam)
find_package(Erlang)

file(GLOB E
    RELATIVE ${CMAKE_SOURCE_DIR}
    lib/*.erl
)

foreach(ERL_FILE ${E})
    string(REGEX REPLACE ".+\/(.+)\.erl$" "${CMAKE_SOURCE_DIR}/lib/\\1.S"
        ERL_SOURCE          ${ERL_FILE})
        list(APPEND INI     ${ERL_SOURCE})
    add_custom_command(
        OUTPUT              ${ERL_SOURCE}
        DEPENDS             ${ERL_FILE}
        WORKING_DIRECTORY   ${CMAKE_SOURCE_DIR}
        COMMAND             erlc
        ARGS                -S -o ${CMAKE_SOURCE_DIR}/lib ${ERL_FILE}
    )
endforeach()
