
function(set_source_root target src_root)
    set_target_properties(${target} PROPERTIES
        SRC_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/${src_root}")
endfunction()

function(source_group_from_target target prefix)
    get_target_property(src_root ${target} SRC_ROOT)
    get_target_property(sources ${target} INTERFACE_SOURCES)
    source_group(TREE ${src_root} PREFIX ${prefix} FILES ${sources})
endfunction()
