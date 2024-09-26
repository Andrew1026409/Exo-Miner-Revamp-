using UnityEditor;

namespace InTerra
{
	public class InTerra_UpdateAndCheckInEditor : UnityEditor.AssetModificationProcessor
	{
		[InitializeOnLoadMethod]
		static void InTerra_InitializeTerrainDataLoading()
		{
			if (!InTerra_Setting.DisableAllAutoUpdates) EditorApplication.update += InTerra_Data.CheckAndUpdate;
			Undo.undoRedoPerformed += UndoChecks;
		}

		static void UndoChecks()
		{
			if (!InTerra_Data.CheckDefinedKeywords()) InTerra_Data.WriteDefinedKeywords();
			InTerra_Data.TerrainMaterialUpdate();
			InTerra_TerrainShaderGUI.restictiInit = false;
		}
	}
}