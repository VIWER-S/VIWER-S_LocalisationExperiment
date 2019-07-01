classdef Counter < handle
   
    properties
        
        nCount = 0;
        nMax = 0;
        sInfo = '';
        
    end
    
    methods 
       
        function [obj] = Counter(varargin)
            
            if nargin == 1
               obj.setMax(varargin{1}); 
            end
            
        end
        
        function [] = setMax(obj, nMax)
            
            obj.nMax = nMax;
            
        end
        
        function nMax = getMax(obj)
           
            nMax = obj.nMax;
            
        end
        
        function [] = setCounter(obj, nCount)
            
            obj.nCount = nCount;
            
        end
        
        function nCount = getCounter(obj)
           
            nCount = obj.nCount;
            
        end
        
        function [] = increase(obj)
            
            obj.nCount = obj.nCount + 1;
            
        end
        
        function [] = decrease(obj)
           
            obj.nCount = obj.nCount - 1;
            
        end
        
        function [] = setInfo(obj, sInfo)
           
            obj.sInfo = sInfo;
            
        end
        
        function [] = printInfo(obj)
            
            fprintf('%s: %d/%d\n', obj.sInfo, obj.nCount, obj.nMax);
            
        end
        
        function sInfo = getInfo(obj)
           
             sInfo = sprintf('%s: %d/%d\n', obj.sInfo, obj.nCount, obj.nMax);
            
        end
        
    end
    
    
end