Unknown [1c0000000000000000005bc80000000000000000]
SectionInteger control_pelvis_offset_assert 0
SectionFloat control_pelvis_max_offset 2.50000
SectionInteger control_pelvis_render_offset 0
SectionFloatsX2 default_particle_lod_dist_pair
{
	Floats [600.000, 1000.00]
}
SectionFloatsX2 default_fast_particle_lod_dist_pair
{
	Floats [600.000, 1000.00]
}
SectionFloat splat_critical_remaining_polys_pcnt 0.500000
SectionInteger splat_alpha_degen_rate 8
SectionInteger particle_heap_size 2097152

Script ToggleControlPelvisRender 0x352afd4e [
	:i if (~$control_pelvis_render_offset$ = %i(0))
		:i $change$${StructInt control_pelvis_render_offset = 1}$
	:i else 
		:i $change$${StructInt control_pelvis_render_offset = 0}$
	:i endif
	:i endfunction
]


Script s 0xe4f130f4 [
	:i if (~$enable_button_cheats$ = %i(0))
		:i $change$${StructInt enable_button_cheats = 1}$
		:i $change$${StructInt debug_use_screen_noise = 0}$
		:i $change$${StructInt debug_use_motion_blur = 0}$
		:i $change$${StructInt g_debug_highway_visible = 0}$
	:i endif
	:i endfunction
]

SectionStruct physics_startup_params
{
	StructHeader
	{
		StructFloatX3 gravity
		{
			Floats [0.00000, -9.80000, 0.00000]
		}
		StructFloat collision_tolerance = 0.10000000149011612
		StructFloat deactivation_reference_distance = 0.019999999552965164
		StructFloat broad_phase_world_size = 20.00
		StructFloatX3 broad_phase_world_origin
		{
			Floats [0.00000, 0.00000, 0.00000]
		}
		StructInt local_stack_size = 200000
	}
}
SectionFloat camera_fov 72.0000
SectionInteger qspakmarginforotherlanguages 100
SectionArray engine_startup_params
{
	ArrayStruct
	[
		StructHeader
		{
			StructQBKey platform = xenon
			StructInt target_ntsc_framerate = 60
			StructInt gpu_vsync_time_interval = 30
			StructInt pool_text_instances = 1024
			StructInt num_sound_instances = 64
			StructInt max_streams = 15
			StructInt max_sound_entries = 1536
			StructInt max_sound_busses = 256
			StructInt max_sound_effects = 64
			StructInt fmod_memory_size = 12582912
			StructInt num_mix_ahead_blocks = 2
			StructQBKey tcr_music_buss = Music_Frontend
			StructInt max_cscript_instances_per_script = 500
			StructInt primary_ring_buffer_size = 0
			StructInt secondary_ring_buffer_size = 2048
			StructInt segment_size = 8
			StructInt shader_heap_allocation = 3670016
			StructInt shader_physical_allocation = 7704800
			StructInt framebuffer_width = 1280
			StructInt globalshadow_width = 0
			StructInt globalshadow_height = 0
			StructInt cpu_skinning_buffer_size = 17500
			StructInt cpu_skinning_buffer_history = 4
			StructInt cpu_skin_wrap_buffer_size = 7500
			StructInt cpu_skin_wrap_buffer_history = 3
			StructInt screenspace_width = 1280
			StructInt screenspace_height = 720
			StructInt default_far_plane_distance = 300
			StructInt jobq_worker_count = 3
			StructArray jobq_worker_config
			{
				ArrayInteger
				[
					3
					5
					2
				]
			}
			StructInt physics_jobq_worker_count = 2
			StructArray physics_jobq_worker_config
			{
				ArrayInteger
				[
					3
					5
				]
			}
			StructInt avatar_load_thread = 2
			StructFloat cull_smallobj = 0.000029999999242136255
			StructInt cull_max_instances = 400
			StructInt cull_max_geom = 1000
			StructInt cull_max_occluder = 256
			StructFloatX3 cull_qtree_center
			{
				Floats [-7.00000, 0.00000, -13.0000]
			}
			StructFloat cull_qtree_dim = 1300.00
			StructFloat cull_qtree_floor = -10.00
			StructInt static_screen_guard_time = 5
			StructQBKey hardware_letterbox = true
			StructInt node_instances_buff = 312
			StructInt node_statics_buff = 240
			StructInt node_sort_buff = 256
			StructInt node_misc_buff = 2600
			StructInt node_2d_buff = 330
			StructInt node_particle_buff = 1400
			StructInt node_particle_node = 256
			StructInt node_prim_buff = 64
			StructInt node_light_buff = 150
		}
		StructHeader
		{
			StructQBKey platform = windx
			StructInt target_ntsc_framerate = 60
			StructInt gpu_vsync_time_interval = 30
			StructInt pool_text_instances = 1024
			StructInt num_sound_instances = 64
			StructInt max_streams = 15
			StructInt max_sound_entries = 1536
			StructInt max_sound_busses = 256
			StructInt max_sound_effects = 64
			StructInt fmod_memory_size = 12582912
			StructInt num_mix_ahead_blocks = 4
			StructQBKey tcr_music_buss = Music_Frontend
			StructInt max_cscript_instances_per_script = 500
			StructInt primary_ring_buffer_size = 0
			StructInt secondary_ring_buffer_size = 2048
			StructInt segment_size = 8
			StructInt framebuffer_width = 1280
			StructInt globalshadow_width = 0
			StructInt globalshadow_height = 0
			StructInt cpu_skinning_buffer_size = 40000
			StructInt cpu_skinning_buffer_history = 5
			StructInt cpu_skin_wrap_buffer_size = 15000
			StructInt cpu_skin_wrap_buffer_history = 3
			StructInt screenspace_width = 1280
			StructInt screenspace_height = 720
			StructInt default_far_plane_distance = 300
			StructInt jobq_worker_count = 0
			StructArray jobq_worker_config
			{
				ArrayInteger
				[
					0
					0
					0
				]
			}
			StructInt physics_jobq_worker_count = 1
			StructArray physics_jobq_worker_config
			{
				ArrayInteger
				[
					5
				]
			}
			StructInt avatar_load_thread = 2
			StructFloat cull_smallobj = 0.000029999999242136255
			StructInt cull_max_instances = 400
			StructInt cull_max_geom = 1000
			StructInt cull_max_occluder = 256
			StructFloatX3 cull_qtree_center
			{
				Floats [-7.00000, 0.00000, -13.0000]
			}
			StructFloat cull_qtree_dim = 1300.00
			StructFloat cull_qtree_floor = -10.00
			StructInt static_screen_guard_time = 5
			StructQBKey hardware_letterbox = true
			StructInt node_instances_buff = 312
			StructInt node_statics_buff = 240
			StructInt node_sort_buff = 256
			StructInt node_misc_buff = 1500
			StructInt node_2d_buff = 330
			StructInt node_particle_buff = 1300
			StructInt node_particle_node = 128
			StructInt node_prim_buff = 512
			StructInt node_light_buff = 130
		}
		StructHeader
		{
			StructQBKey platform = ps3
			StructInt target_ntsc_framerate = 60
			StructInt gpu_vsync_time_interval = 30
			StructInt pool_text_instances = 1024
			StructInt num_sound_instances = 64
			StructInt max_streams = 15
			StructInt max_sound_entries = 1536
			StructInt max_sound_busses = 256
			StructInt max_sound_effects = 64
			StructInt fmod_memory_size = 13107200
			StructInt num_mix_ahead_blocks = 5
			StructQBKey tcr_music_buss = Music_Frontend
			StructInt max_cscript_instances_per_script = 500
			StructInt primary_ring_buffer_size = 0
			StructInt secondary_ring_buffer_size = 4096
			StructInt framebuffer_width = 1040
			StructInt globalshadow_width = 0
			StructInt globalshadow_height = 0
			StructInt cpu_skinning_buffer_size = 18500
			StructInt cpu_skinning_buffer_history = 4
			StructInt cpu_skinning_buffer_location = 1
			StructInt cpu_skin_wrap_buffer_size = 7500
			StructInt cpu_skin_wrap_buffer_history = 3
			StructInt spu_shaderpatch_buffer_size = 2048
			StructInt spu_shaderpatch_param_buffer_size = 256
			StructInt screenspace_width = 1280
			StructInt screenspace_height = 720
			StructInt default_far_plane_distance = 300
			StructInt jobq_worker_count = 5
			StructArray jobq_worker_config
			{
				ArrayInteger
				[
					15
					15
					15
					15
					15
					15
					0
					0
				]
			}
			StructInt jobq_fmod_spurs_count = 0
			StructInt jobq_physics_spurs_count = 0
			StructFloat cull_smallobj = 0.000029999999242136255
			StructInt cull_max_instances = 400
			StructInt cull_max_geom = 1000
			StructInt cull_max_occluder = 256
			StructFloatX3 cull_qtree_center
			{
				Floats [-7.00000, 0.00000, -13.0000]
			}
			StructFloat cull_qtree_dim = 1300.00
			StructFloat cull_qtree_floor = -10.00
			StructInt static_screen_guard_time = 5
			StructQBKey hardware_letterbox = true
			StructInt node_instances_buff = 300
			StructInt node_statics_buff = 200
			StructInt node_sort_buff = 256
			StructInt node_misc_buff = 2400
			StructInt node_2d_buff = 325
			StructInt node_particle_buff = 1400
			StructInt node_particle_node = 256
			StructInt node_prim_buff = 64
			StructInt node_light_buff = 250
			StructInt z_tile_override_width = 1536
			StructInt z_tile_override_height = 768
			StructInt edge_ring_buffer_size = 1200
			StructInt edge_ring_buffer_location = 1
			StructInt edge_shared_buffer_size = 0
			StructInt edge_shared_buffer_location = 0
		}
	
	]
}
SectionArray g_game_heaps_xplatform
{
	ArrayStruct
	[
		StructHeader
		{
			StructString name = "heap_script_cache_small_allocs"
			StructInt size = 120
		}
		StructHeader
		{
			StructString name = "heap_script_cache_big_allocs"
			StructInt size = 150
		}
		StructHeader
		{
			StructString name = "heap_script"
			StructInt size = 512
		}
		StructHeader
		{
			StructString name = "heap_global_scripts"
			StructInt size = 10012
		}
		StructHeader
		{
			StructString name = "heap_network"
			StructInt size = 2248
		}
		StructHeader
		{
			StructString name = "heap_frontend"
			StructInt size = 3482
		}
		StructHeader
		{
			StructString name = "heap_internet_bottomup"
			StructInt size = 440
			StructString top_down_name = "heap_internet_topdown"
		}
	
	]
}
SectionArray g_game_heaps_ps3
{
	ArrayStruct
	[
		StructHeader
		{
			StructString name = "heap_engine"
			StructInt size = 6592
			StructString top_down_name = "heap_shader"
		}
		StructHeader
		{
			StructString name = "heap_renderdata"
			StructInt size = 1024
		}
		StructHeader
		{
			StructString name = "heap_loading_screen"
			StructInt size = 66
			StructInt vram_size = 280
		}
		StructHeader
		{
			StructString name = "heap_screen_fx"
			StructInt size = 900
		}
		StructHeader
		{
			StructString name = "heap_global_pak"
			StructInt size = 1350
			StructInt vram_size = 6572
		}
	
	]
}
SectionArray g_game_heaps_xenon
{
	ArrayStruct
	[
		StructHeader
		{
			StructString name = "heap_engine"
			StructInt size = 6144
			StructString top_down_name = "heap_shader"
		}
		StructHeader
		{
			StructString name = "heap_renderdata"
			StructInt size = 1024
		}
		StructHeader
		{
			StructString name = "heap_loading_screen"
			StructInt size = 350
		}
		StructHeader
		{
			StructString name = "heap_screen_fx"
			StructInt size = 1100
		}
		StructHeader
		{
			StructString name = "heap_global_pak"
			StructInt size = 10612
		}
	
	]
}
SectionArray g_game_heaps_wdx
{
	ArrayStruct
	[
		StructHeader
		{
			StructString name = "heap_engine"
			StructInt size = 7000
			StructString top_down_name = "heap_shader"
		}
		StructHeader
		{
			StructString name = "heap_renderdata"
			StructInt size = 1024
		}
		StructHeader
		{
			StructString name = "heap_loading_screen"
			StructInt size = 350
		}
		StructHeader
		{
			StructString name = "heap_screen_fx"
			StructInt size = 1100
		}
		StructHeader
		{
			StructString name = "heap_global_pak"
			StructInt size = 10612
		}
	
	]
}
SectionArray g_game_pools_xplatform
{
	ArrayStruct
	[
		StructHeader
		{
			StructQBKey name = Mdl::PlayerServerMessage
			StructInt size = 128
		}
		StructHeader
		{
			StructQBKey name = f5ba0ed9
			StructInt size = 2048
		}
		StructHeader
		{
			StructQBKey name = Nx::CAnimLookup
			StructInt size = 200
		}
		StructHeader
		{
			StructQBKey name = Anm::CEventTrack
			StructInt size = 2048
		}
		StructHeader
		{
			StructQBKey name = Gfx::CChangeFOVKey
			StructInt size = 20000
		}
		StructHeader
		{
			StructQBKey name = Gfx::CTempoMatchingKey
			StructInt size = 7000
		}
		StructHeader
		{
			StructQBKey name = Gfx::CEmptyKey
			StructInt size = 32
		}
		StructHeader
		{
			StructQBKey name = Gfx::CEventKey
			StructInt size = 15000
		}
		StructHeader
		{
			StructQBKey name = Obj::CScriptListEntry
			StructInt size = 1000
		}
		StructHeader
		{
			StructQBKey name = Obj::CEventReceiverList
			StructInt size = 175
		}
		StructHeader
		{
			StructQBKey name = Ass::CAssetTable::SAssetInfo
			StructInt size = 12000
		}
		StructHeader
		{
			StructQBKey name = Ass::CAssetTable
			StructInt size = 2
		}
		StructHeader
		{
			StructQBKey name = Obj::CComponentGroup
			StructInt size = 1000
		}
		StructHeader
		{
			StructQBKey name = Script::CScript
			StructInt size = 600
		}
		StructHeader
		{
			StructQBKey name = Script::CScriptDebugStuff
			StructInt size = 1200
			StructQBKey heap = heap_debug
			StructQBKey debug_only
		}
		StructHeader
		{
			StructQBKey name = Script::CComponent
			StructInt size = 80000
		}
		StructHeader
		{
			StructQBKey name = Script::CArray
			StructInt size = 6500
		}
		StructHeader
		{
			StructQBKey name = Script::CStruct
			StructInt size = 60000
		}
		StructHeader
		{
			StructQBKey name = Script::CPair
			StructInt size = 1800
		}
		StructHeader
		{
			StructQBKey name = Script::CVector
			StructInt size = 2000
		}
		StructHeader
		{
			StructQBKey name = Script::CStoredRandom
			StructInt size = 100
		}
		StructHeader
		{
			StructQBKey name = Script::CWait::CEventMatch
			StructInt size = 5000
		}
		StructHeader
		{
			StructQBKey name = Script::CCompiledScriptWorkspace
			StructInt size = 100
		}
		StructHeader
		{
			StructQBKey name = Script::CQSString
			StructInt size = 20000
		}
		StructHeader
		{
			StructQBKey name = Nx::CSprite
			StructInt size = 2660
		}
		StructHeader
		{
			StructQBKey name = NxPlat::SSprite
			StructInt size = 2660
		}
	
	]
}
SectionArray small_pool_sizes_xplatform
{
	ArrayInteger
	[
		1500
		2500
		6000
		4000
		4000
		3500
		3000
		3000
		1024
		768
		768
		1024
		512
		1500
		2000
		5500
		1024
		3500
		512
		1024
		256
		192
		256
		512
		128
		256
		256
		64
		64
		128
		128
		512
	]
}
SectionArray memory_startup_params
{
	ArrayStruct
	[
		StructHeader
		{
			StructQBKey platform = xenon
			StructQBString small_pool_sizes = small_pool_sizes_xplatform
			StructQBString game_pools = g_game_pools_xplatform
			StructQBString game_heaps = g_game_heaps_xplatform
			StructQBString game_heaps_plat = g_game_heaps_xenon
		}
		StructHeader
		{
			StructQBKey platform = windx
			StructQBString small_pool_sizes = small_pool_sizes_xplatform
			StructQBString game_pools = g_game_pools_xplatform
			StructQBString game_heaps = g_game_heaps_xplatform
			StructQBString game_heaps_plat = g_game_heaps_wdx
		}
		StructHeader
		{
			StructQBKey platform = ps3
			StructQBString small_pool_sizes = small_pool_sizes_xplatform
			StructQBString game_pools = g_game_pools_xplatform
			StructQBString game_heaps = g_game_heaps_xplatform
			StructQBString game_heaps_plat = g_game_heaps_ps3
		}
	
	]
}
SectionStruct ps3_framebuffer_resources
{
	StructHeader
	{
		StructStruct crowd
		{
			StructHeader
			{
				StructInt width = 1536
				StructInt height = 768
				StructQBKey format = 8888
				StructQBKey mips
				StructQBKey tiled
			}
		}
	}
}
SectionStruct xenon_framebuffer_resources
{
	StructHeader
	{
		StructStruct crowd
		{
			StructHeader
			{
				StructInt width = 1536
				StructInt height = 768
				StructQBKey format = 8888
				StructQBKey mips
			}
		}
	}
}
SectionStruct viewport_params
{
	StructHeader
	{
		StructArray perm_viewports
		{
			ArrayStruct
			[
				StructHeader
				{
					StructQBKey id = ui
					StructInt priority = 0
					StructQBKey style = viewport_ui_overlay
					StructQBKey has_ui = true
					StructQBKey has_ui_only = true
					StructQBKey draw_2d_debug_lines = true
					StructQBKey clear_colorbuffer = false
					StructQBKey clear_depthstencilbuffer = false
					StructQBKey no_resolve_colorbuffer = true
					StructQBKey no_resolve_depthstencilbuffer = true
					StructInt framerate = 60
					StructInt framemask = 3
				}
				StructHeader
				{
					StructInt id = 0
					StructInt priority = 1
					StructQBKey player_viewport = true
					StructQBKey has_shadow = false
				}
			
			]
		}
		StructQBKey default_screen_mode = one_camera
		StructArray screen_modes
		{
			ArrayStruct
			[
				StructHeader
				{
					StructQBKey id = one_camera
					StructArray viewports
					{
						ArrayStruct
						[
							StructHeader
							{
								StructQBKey id = ui
								StructQBKey active = true
								StructQBKey style = viewport_ui_overlay
							}
							StructHeader
							{
								StructInt id = 0
								StructQBKey active = false
								StructQBKey style = fullscreen
							}
						
						]
					}
					StructFloatX2 shadow_map_size
					{
						Floats [1024.00, 512.000]
					}
				}
				StructHeader
				{
					StructQBKey id = debug
					StructArray viewports
					{
						ArrayStruct
						[
							StructHeader
							{
								StructInt id = 0
								StructQBKey active = true
								StructQBKey style = fullscreen_with_debug
							}
						
						]
					}
					StructFloatX2 shadow_map_size
					{
						Floats [1024.00, 512.000]
					}
				}
			
			]
		}
		StructStruct styles
		{
			StructHeader
			{
				StructStruct fullscreen
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructQBKey allow_msaa
						StructQBKey managed
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
						StructQBKey profilerid = mainviewport
					}
				}
				StructStruct fullscreen_nomsaa
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructQBKey managed
						StructQBKey resolve_to_prev_texture_with_alpha
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
						StructQBKey profilerid = mainviewport
					}
				}
				StructStruct prepass_fullscreen
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructQBKey managed
						StructQBKey discard_previous_frame
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
					}
				}
				StructStruct split_v_left
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.0650000
								0.00000
								0.500000
								1.00000
							]
						}
						StructQBKey managed
						StructFloat fov_adjustment = 0.5
						StructQBKey discard_previous_frame
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
						StructQBKey profilerid = mainviewport
					}
				}
				StructStruct split_v_right
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.435000
								0.00000
								0.500000
								1.00000
							]
						}
						StructQBKey managed
						StructFloat fov_adjustment = 0.5
						StructQBKey discard_previous_frame
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
						StructQBKey profilerid = mainviewport
					}
				}
				StructStruct split_h_top
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								0.500000
							]
						}
						StructQBKey managed
						StructQBKey discard_previous_frame
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
						StructQBKey profilerid = mainviewport
					}
				}
				StructStruct split_h_bottom
				{
					StructHeader
					{
						StructQBKey managed
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								0.500000
							]
						}
						StructQBKey render_to_texture_with_alpha
						StructQBKey ignore_alpha_channel
						StructQBKey discard_previous_frame
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
						StructQBKey profilerid = mainviewport
					}
				}
				StructStruct cutscene_movie_surface
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructQBKey render_to_texture_with_alpha
						StructInt width = 768
						StructInt height = 320
						StructQBKey copy_to_main
						StructFloat resolution = 1.00
						StructQBKey discard_previous_frame
						StructFloatX2 uidims
						{
							Floats [768.000, 320.000]
						}
					}
				}
				StructStruct cutscene_movie_surface_ps3
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructQBKey render_to_texture_with_alpha
						StructInt width = 384
						StructInt height = 160
						StructQBKey copy_to_main
						StructFloat resolution = 1.00
						StructQBKey discard_previous_frame
						StructFloatX2 uidims
						{
							Floats [384.000, 160.000]
						}
					}
				}
				StructStruct cutscene_movie_surface_fs
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructQBKey render_to_texture_with_alpha
						StructQBKey copy_to_main
						StructFloat resolution = 1.00
						StructQBKey discard_previous_frame
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
					}
				}
				StructStruct viewport_element
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructQBKey render_to_texture
						StructQBKey ignore_alpha_channel
						StructFloat resolution = 0.5
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
					}
				}
				StructStruct viewport_ui_overlay
				{
					StructHeader
					{
						StructQBKey dummy_viewport
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
						StructQBKey color_only
						StructQBKey profilerid = uiviewport
					}
				}
				StructStruct viewport_ui_texture
				{
					StructHeader
					{
						StructQBKey render_to_texture_with_alpha
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
						StructQBKey profilerid = uiviewport
					}
				}
				StructStruct viewport_photo
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructQBKey render_to_texture
						StructQBKey ignore_alpha_channel
						StructFloat resolution = 0.75
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
					}
				}
				StructStruct viewport_element_square
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								0.562500
								1.00000
							]
						}
						StructQBKey render_to_texture
						StructQBKey ignore_alpha_channel
						StructFloat resolution = 0.5
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
					}
				}
				StructStruct fullscreen_with_debug
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								0.750000
								0.750000
							]
						}
						StructQBKey discard_previous_frame
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
					}
				}
				StructStruct shadow_big
				{
					StructHeader
					{
						StructQBKey dummy_viewport
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructFloatX2 uidims
						{
							Floats [768.000, 768.000]
						}
						StructQBKey profilerid = shadowviewport
					}
				}
				StructStruct shadow_small
				{
					StructHeader
					{
						StructQBKey dummy_viewport
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructFloatX2 uidims
						{
							Floats [512.000, 512.000]
						}
						StructQBKey profilerid = shadowviewport
					}
				}
				StructStruct imposter_rendering
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 128
						StructInt height = 256
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [128.000, 256.000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct imposter_rendering_quad_base
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructArray resolve_rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								768.000
								768.000
							]
						}
						StructInt width = 768
						StructInt height = 768
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructQBKey disablevisibility
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [768.000, 768.000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct imposter_rendering_highres_quad_base
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructArray resolve_rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1024.00
								1024.00
							]
						}
						StructInt width = 1024
						StructInt height = 1024
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructQBKey disablevisibility
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [1024.00, 1024.00]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct imposter_rendering_quad0
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								0.250000
								0.500000
							]
						}
						StructInt width = 768
						StructInt height = 768
						StructQBKey render_to_texture_with_alpha
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [768.000, 768.000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct imposter_rendering_quad1
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.500000
								0.250000
								1.00000
							]
						}
						StructInt width = 768
						StructInt height = 768
						StructQBKey render_to_texture_with_alpha
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [768.000, 768.000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct imposter_rendering_quad2
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.250000
								0.00000
								0.500000
								0.500000
							]
						}
						StructInt width = 768
						StructInt height = 768
						StructQBKey render_to_texture_with_alpha
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [768.000, 768.000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct imposter_rendering_quad3
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.250000
								0.500000
								0.500000
								1.00000
							]
						}
						StructInt width = 768
						StructInt height = 768
						StructQBKey render_to_texture_with_alpha
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [768.000, 768.000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct imposter_rendering_quad4
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.500000
								0.00000
								0.750000
								0.500000
							]
						}
						StructInt width = 768
						StructInt height = 768
						StructQBKey render_to_texture_with_alpha
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [768.000, 768.000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct imposter_rendering_quad5
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.500000
								0.500000
								0.750000
								1.00000
							]
						}
						StructInt width = 768
						StructInt height = 768
						StructQBKey render_to_texture_with_alpha
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [768.000, 768.000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct imposter_rendering_highres
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 256
						StructInt height = 512
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [256.000, 512.000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct imposter_rendering_highres_quad0
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								0.250000
								0.500000
							]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct imposter_rendering_highres_quad1
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.500000
								0.250000
								1.00000
							]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct imposter_rendering_highres_quad2
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.250000
								0.00000
								0.500000
								0.500000
							]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct imposter_rendering_highres_quad3
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.250000
								0.500000
								0.500000
								1.00000
							]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct imposter_rendering_highres_quad4
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.500000
								0.00000
								0.750000
								0.500000
							]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct imposter_rendering_highres_quad5
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.500000
								0.500000
								0.750000
								1.00000
							]
						}
						StructFloat resolution = 1.00
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct jumbotron_rendering
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 256
						StructInt height = 128
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [256.000, 124.000]
						}
						StructQBKey profilerid = TVViewport
					}
				}
				StructStruct visualizer_rendering
				{
					StructHeader
					{
						StructQBKey color_only
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 512
						StructInt height = 512
						StructQBKey resolve_to_prev_texture_with_alpha
						StructQBKey render_to_texture_with_alpha
						StructQBKey managed
						StructQBKey disablevisibility
						StructInt framerate = 60
						StructInt framemask = 3
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [256.000, 124.000]
						}
						StructQBKey profilerid = visualizerviewport
					}
				}
				StructStruct visualizer_rendering_hires
				{
					StructHeader
					{
						StructQBKey color_only
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 1280
						StructInt height = 720
						StructQBKey resolve_to_prev_texture_with_alpha
						StructQBKey render_to_texture_with_alpha
						StructQBKey managed
						StructQBKey disablevisibility
						StructInt framerate = 60
						StructInt framemask = 3
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
						StructQBKey profilerid = visualizerviewport
					}
				}
				StructStruct vocals_visualizer_rendering
				{
					StructHeader
					{
						StructQBKey color_only
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 456
						StructInt height = 104
						StructQBKey resolve_to_prev_texture_with_alpha
						StructQBKey render_to_texture_with_alpha
						StructQBKey disablevisibility
						StructInt framerate = 60
						StructInt framemask = 3
						StructQBKey managed
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [456.000, 104.000]
						}
						StructQBKey profilerid = visualizerviewport
					}
				}
				StructStruct vocals_freeform_rendering
				{
					StructHeader
					{
						StructQBKey color_only
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 640
						StructInt height = 104
						StructQBKey resolve_to_prev_texture_with_alpha
						StructQBKey render_to_texture_with_alpha
						StructQBKey disablevisibility
						StructInt framerate = 60
						StructInt framemask = 3
						StructQBKey managed
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [1280.00, 104.000]
						}
						StructQBKey profilerid = highwayviewport
					}
				}
				StructStruct highway_visualizer_rendering
				{
					StructHeader
					{
						StructQBKey color_only
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 256
						StructInt height = 400
						StructQBKey resolve_to_prev_texture_with_alpha
						StructQBKey render_to_texture_with_alpha
						StructQBKey disablevisibility
						StructInt framerate = 60
						StructInt framemask = 3
						StructQBKey managed
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [128.000, 128.000]
						}
						StructQBKey profilerid = visualizerviewport
					}
				}
				StructStruct ui_visualizer_rendering
				{
					StructHeader
					{
						StructQBKey color_only
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 256
						StructInt height = 256
						StructQBKey resolve_to_prev_texture_with_alpha
						StructQBKey render_to_texture_with_alpha
						StructQBKey disablevisibility
						StructInt framerate = 60
						StructInt framemask = 3
						StructQBKey managed
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [256.000, 256.000]
						}
						StructQBKey profilerid = visualizerviewport
					}
				}
				StructStruct character_head_rendering
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 128
						StructInt height = 128
						StructQBKey mipmap
						StructQBKey render_to_texture_with_alpha
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [128.000, 128.000]
						}
					}
				}
				StructStruct magazine_rendering
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 512
						StructInt height = 512
						StructQBKey render_to_texture
						StructQBKey ignore_alpha_channel
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [512.000, 512.000]
						}
						StructQBKey profilerid = uiviewport
					}
				}
				StructStruct bandname_rendering
				{
					StructHeader
					{
						StructQBKey color_only
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 512
						StructInt height = 128
						StructQBKey render_to_texture_with_alpha
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [512.000, 128.000]
						}
						StructQBKey profilerid = uiviewport
					}
				}
				StructStruct unwrap_rendering
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 512
						StructInt height = 256
						StructQBKey render_to_texture_with_alpha
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [512.000, 128.000]
						}
					}
				}
				StructStruct highway_prepass_rendering_1p
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructFloat resolution = 1.00
						StructQBKey dummy_viewport
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
						StructQBKey profilerid = highwayviewport
					}
				}
				StructStruct highway_prepass_rendering_2p1
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								0.500000
								1.00000
							]
						}
						StructFloat resolution = 1.00
						StructQBKey dummy_viewport
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
						StructQBKey profilerid = highwayviewport
					}
				}
				StructStruct highway_prepass_rendering_2p2
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.500000
								0.00000
								0.500000
								1.00000
							]
						}
						StructFloat resolution = 1.00
						StructQBKey dummy_viewport
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
						StructQBKey profilerid = highwayviewport
					}
				}
				StructStruct highway_fader
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructArray resolve_rect
						{
							ArrayInteger
							[
								0
								0
								1280
								720
							]
						}
						StructQBKey resolve_to_texture_with_alpha
						StructQBKey resolve_to_prev_texture_with_alpha
						StructQBKey allow_msaa
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
						StructQBKey profilerid = highwayviewport
					}
				}
				StructStruct highway_fader_2p
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructArray resolve_rect
						{
							ArrayInteger
							[
								0
								0
								1280
								720
							]
						}
						StructQBKey resolve_to_texture_with_alpha
						StructQBKey resolve_to_prev_texture_with_alpha
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
						StructQBKey profilerid = highwayviewport
					}
				}
				StructStruct highway_fader_ps3
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructArray resolve_rect
						{
							ArrayInteger
							[
								0
								0
								1040
								592
							]
						}
						StructQBKey resolve_to_texture_with_alpha
						StructQBKey resolve_to_prev_texture_with_alpha
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
						StructQBKey profilerid = highwayviewport
					}
				}
				StructStruct highway_fader_2p_ps3
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructArray resolve_rect
						{
							ArrayInteger
							[
								0
								0
								1040
								592
							]
						}
						StructQBKey resolve_to_texture_with_alpha
						StructQBKey resolve_to_prev_texture_with_alpha
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [1280.00, 720.000]
						}
						StructQBKey profilerid = highwayviewport
					}
				}
				StructStruct debug_0
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.750000
								0.00000
								0.250000
								0.250000
							]
						}
					}
				}
				StructStruct debug_1
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.750000
								0.250000
								0.250000
								0.250000
							]
						}
					}
				}
				StructStruct debug_2
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.750000
								0.500000
								0.250000
								0.250000
							]
						}
					}
				}
				StructStruct debug_3
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.750000
								0.750000
								0.250000
								0.250000
							]
						}
					}
				}
				StructStruct debug_4
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.500000
								0.750000
								0.250000
								0.250000
							]
						}
					}
				}
				StructStruct debug_5
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.250000
								0.750000
								0.250000
								0.250000
							]
						}
					}
				}
				StructStruct debug_6
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.750000
								0.250000
								0.250000
							]
						}
					}
				}
				StructStruct band_viewports
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 220
						StructInt height = 415
						StructQBKey managed
						StructQBKey render_to_texture_with_alpha
						StructFloat resolution = 1.00
						StructFloatX2 uidims
						{
							Floats [672.000, 122.000]
						}
					}
				}
				StructStruct crowd_base_768
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 768
						StructInt height = 768
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructQBKey use_tiling
						StructQBKey disablevisibility
						StructFloat resolution = 1.00
						StructQBKey profilerid = crowdviewport
						StructQBKey resourceid = crowd
					}
				}
				StructStruct crowd_base_1024
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 1024
						StructInt height = 1024
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructQBKey use_tiling
						StructQBKey disablevisibility
						StructFloat resolution = 1.00
						StructQBKey profilerid = crowdviewport
						StructQBKey resourceid = crowd
					}
				}
				StructStruct crowd_base_1024x512
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 1024
						StructInt height = 512
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructQBKey use_tiling
						StructQBKey use_comp_c32_2x1
						StructQBKey disablevisibility
						StructFloat resolution = 1.00
						StructQBKey profilerid = crowdviewport
						StructQBKey resourceid = crowd
					}
				}
				StructStruct crowd_base_1536
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 1536
						StructInt height = 1536
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructQBKey use_tiling
						StructQBKey use_comp_c32_2x1
						StructQBKey disablevisibility
						StructFloat resolution = 1.00
						StructQBKey profilerid = crowdviewport
						StructQBKey resourceid = crowd
					}
				}
				StructStruct crowd_base_1536x768
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 1536
						StructInt height = 768
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructQBKey use_tiling
						StructQBKey use_comp_c32_2x1
						StructQBKey disablevisibility
						StructFloat resolution = 1.00
						StructQBKey profilerid = crowdviewport
						StructQBKey resourceid = crowd
					}
				}
				StructStruct crowd_quad0
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								0.250000
								0.500000
							]
						}
					}
				}
				StructStruct crowd_quad1
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.500000
								0.250000
								1.00000
							]
						}
					}
				}
				StructStruct crowd_quad2
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.250000
								0.00000
								0.500000
								0.500000
							]
						}
					}
				}
				StructStruct crowd_quad3
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.250000
								0.500000
								0.500000
								1.00000
							]
						}
					}
				}
				StructStruct crowd_quad4
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.500000
								0.00000
								0.750000
								0.500000
							]
						}
					}
				}
				StructStruct crowd_quad5
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.500000
								0.500000
								0.750000
								1.00000
							]
						}
					}
				}
				StructStruct crowd_quad6
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.750000
								0.00000
								1.00000
								0.500000
							]
						}
					}
				}
				StructStruct crowd_quad7
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.750000
								0.500000
								1.00000
								1.00000
							]
						}
					}
				}
				StructStruct crowd_2x2_quad0
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								0.500000
								0.500000
							]
						}
					}
				}
				StructStruct crowd_2x2_quad1
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.500000
								0.00000
								1.00000
								0.500000
							]
						}
					}
				}
				StructStruct crowd_2x2_quad2
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.500000
								0.500000
								1.00000
							]
						}
					}
				}
				StructStruct crowd_2x2_quad3
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.500000
								0.500000
								1.00000
								1.00000
							]
						}
					}
				}
				StructStruct crowd_4x1_quad0
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								0.250000
								1.00000
							]
						}
					}
				}
				StructStruct crowd_4x1_quad1
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.250000
								0.00000
								0.500000
								1.00000
							]
						}
					}
				}
				StructStruct crowd_4x1_quad2
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.500000
								0.00000
								0.750000
								1.00000
							]
						}
					}
				}
				StructStruct crowd_4x1_quad3
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.750000
								0.00000
								1.00000
								1.00000
							]
						}
					}
				}
				StructStruct crowd_jiggle3_base_1024_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 256
						StructInt height = 1024
						StructInt texture_width = 1024
						StructInt texture_height = 1024
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructQBKey disablevisibility
						StructFloat resolution = 1.00
						StructQBKey profilerid = crowdviewport
						StructQBKey resourceid = crowd
					}
				}
				StructStruct crowd_jiggle3_base_4x_1024_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 256
						StructInt height = 1024
						StructInt texture_width = 1024
						StructInt texture_height = 1024
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructQBKey msaax4
						StructQBKey disablevisibility
						StructFloat resolution = 1.00
						StructQBKey profilerid = crowdviewport
						StructQBKey resourceid = crowd
					}
				}
				StructStruct crowd_jiggle3_base_2x_1024_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 256
						StructInt height = 1024
						StructInt texture_width = 1024
						StructInt texture_height = 1024
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructQBKey msaax2
						StructQBKey disablevisibility
						StructFloat resolution = 1.00
						StructQBKey profilerid = crowdviewport
						StructQBKey resourceid = crowd
					}
				}
				StructStruct crowd_jiggle3_base_1536_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 384
						StructInt height = 1536
						StructInt texture_width = 1536
						StructInt texture_height = 1536
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructQBKey disablevisibility
						StructFloat resolution = 1.00
						StructQBKey profilerid = crowdviewport
						StructQBKey resourceid = crowd
					}
				}
				StructStruct crowd_jiggle3_base_2x_1536_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 384
						StructInt height = 1536
						StructInt texture_width = 1536
						StructInt texture_height = 1536
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructQBKey msaax2
						StructQBKey disablevisibility
						StructFloat resolution = 1.00
						StructQBKey profilerid = crowdviewport
						StructQBKey resourceid = crowd
					}
				}
				StructStruct crowd_jiggle3_base_2048_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 512
						StructInt height = 2048
						StructInt texture_width = 2048
						StructInt texture_height = 2048
						StructQBKey render_to_texture_with_alpha
						StructQBKey colorformat_555
						StructQBKey disablevisibility
						StructFloat resolution = 1.00
						StructQBKey profilerid = crowdviewport
						StructQBKey resourceid = crowd
					}
				}
				StructStruct crowd_jiggle3_quad0_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								0.500000
							]
						}
						StructFloatX2 resolve_point
						{
							Floats [0.00000, 0.00000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct crowd_jiggle3_quad1_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.500000
								1.00000
								1.00000
							]
						}
						StructFloatX2 resolve_point
						{
							Floats [0.00000, 0.00000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct crowd_jiggle3_quad2_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								0.500000
							]
						}
						StructFloatX2 resolve_point
						{
							Floats [0.250000, 0.00000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct crowd_jiggle3_quad3_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.500000
								1.00000
								1.00000
							]
						}
						StructFloatX2 resolve_point
						{
							Floats [0.250000, 0.00000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct crowd_jiggle3_quad4_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								0.500000
							]
						}
						StructFloatX2 resolve_point
						{
							Floats [0.500000, 0.00000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct crowd_jiggle3_quad5_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.500000
								1.00000
								1.00000
							]
						}
						StructFloatX2 resolve_point
						{
							Floats [0.500000, 0.00000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct crowd_jiggle3_quad6_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								0.500000
							]
						}
						StructFloatX2 resolve_point
						{
							Floats [0.750000, 0.00000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct crowd_jiggle3_quad7_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.500000
								1.00000
								1.00000
							]
						}
						StructFloatX2 resolve_point
						{
							Floats [0.750000, 0.00000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct crowd_jiggle2_base_1024_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 768
						StructInt height = 512
						StructInt texture_width = 1024
						StructInt texture_height = 1024
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructQBKey disablevisibility
						StructFloat resolution = 1.00
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct crowd_jiggle2_base_2x_1024_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 768
						StructInt height = 512
						StructInt texture_width = 1024
						StructInt texture_height = 1024
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructQBKey msaax2
						StructQBKey disablevisibility
						StructFloat resolution = 1.00
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct crowd_jiggle2_base_1536_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								1.00000
								1.00000
							]
						}
						StructInt width = 1152
						StructInt height = 768
						StructInt texture_width = 1536
						StructInt texture_height = 1536
						StructQBKey render_to_texture_with_alpha
						StructQBKey mipmap
						StructQBKey disablevisibility
						StructFloat resolution = 1.00
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct crowd_jiggle2_quad0_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								0.333333
								1.00000
							]
						}
						StructFloatX2 resolve_point
						{
							Floats [0.00000, 0.00000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct crowd_jiggle2_quad1_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.333333
								0.00000
								0.666667
								1.00000
							]
						}
						StructFloatX2 resolve_point
						{
							Floats [0.00000, 0.00000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct crowd_jiggle2_quad2_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.666667
								0.00000
								1.00000
								1.00000
							]
						}
						StructFloatX2 resolve_point
						{
							Floats [0.00000, 0.00000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct crowd_jiggle2_quad3_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.00000
								0.00000
								0.333333
								1.00000
							]
						}
						StructFloatX2 resolve_point
						{
							Floats [0.00000, 0.500000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct crowd_jiggle2_quad4_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.333333
								0.00000
								0.666667
								1.00000
							]
						}
						StructFloatX2 resolve_point
						{
							Floats [0.00000, 0.500000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
				StructStruct crowd_jiggle2_quad5_xenon
				{
					StructHeader
					{
						StructArray rect
						{
							ArrayFloat
							[
								0.666667
								0.00000
								1.00000
								1.00000
							]
						}
						StructFloatX2 resolve_point
						{
							Floats [0.00000, 0.500000]
						}
						StructQBKey profilerid = crowdviewport
					}
				}
			}
		}
	}
}
SectionArray ps3_video_out_params
{
	ArrayStruct
	[
		StructHeader
		{
			StructQBKey id = 480i_4_3
			StructInt border_x = 16
			StructInt border_y = 0
			StructInt shift_x = 0
			StructInt shift_y = 0
			StructFloat aspect_correction = 1.00
		}
		StructHeader
		{
			StructQBKey id = 480i_16_9
			StructInt border_x = 16
			StructInt border_y = 0
			StructInt shift_x = 0
			StructInt shift_y = 0
			StructFloat aspect_correction = 1.00
		}
		StructHeader
		{
			StructQBKey id = 480p_4_3
			StructInt border_x = 14
			StructInt border_y = 0
			StructInt shift_x = 0
			StructInt shift_y = 0
			StructFloat aspect_correction = 1.00
		}
		StructHeader
		{
			StructQBKey id = 480p_16_9
			StructInt border_x = 14
			StructInt border_y = 0
			StructInt shift_x = 0
			StructInt shift_y = 0
			StructFloat aspect_correction = 1.00
		}
	
	]
}
SectionArray thread_safe_globals
{
	ArrayQBKey
	[
		primary_controller
		required_save_data_size_ps3
		temp_language_hack
		render_lock_framerate
		dbg_clear_color
		highway_lines
		highway_pos_table
		whammywibbles
		net_additional_latency_ms
		net_drop_packet_percentage
		renderquadtreedensity
	]
}
