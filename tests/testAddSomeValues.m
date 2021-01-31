classdef testAddSomeValues < matlab.unittest.TestCase
    
    methods(Test)
        
        function testBasicFunctionality(testCase)
            
            testCase.assertEqual(2, addSomeValues(1, 1))
            
        end

    end
    
end