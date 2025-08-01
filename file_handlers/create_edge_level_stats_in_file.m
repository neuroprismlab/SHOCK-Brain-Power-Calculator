function create_edge_level_stats_in_file(file_path, file_type, n_var, n_repetitions, edge_groups)


    switch file_type
        
        case 'full_file'

            edge_level_stats = nan(n_var, n_repetitions);
            network_level_stats = nan(length(unique(edge_groups)) - 1, 1);

            save(file_path, 'edge_level_stats', 'network_level_stats', '-append');

        case 'compact_file'
            
            edge_level_stats = nan(n_var, 1);
            network_level_stats = nan(length(unique(edge_groups)) - 1, 1);

            edge_mean_squared_error = nan(n_var, 1);
            network_mean_squared_error = nan(length(unique(edge_groups)) - 1, 1);

            save(file_path, 'edge_level_stats', 'network_level_stats', ...
                'edge_mean_squared_error', 'network_mean_squared_error', '-append');

        otherwise
            error('File type not supported')

    end

end
