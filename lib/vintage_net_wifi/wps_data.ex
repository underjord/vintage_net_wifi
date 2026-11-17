# SPDX-FileCopyrightText: 2021 WN
#
# SPDX-License-Identifier: Apache-2.0
#
defmodule VintageNetWiFi.WPSData do
  @moduledoc """
  Utilities for handling WPS data

  The implementation is in `VintageNetSupplicant.WPSData`.
  """

  @typedoc """
  A map containing WPS data

  See `t:VintageNetSupplicant.WPSData.t/0`.
  """
  @type t() :: VintageNetSupplicant.WPSData.t()

  @doc """
  Decode WPS data

  The WPS data is expected to be in hex string form like what the
  wpa_supplicant reports.
  """
  @spec decode(binary) :: {:ok, t()} | :error
  defdelegate decode(hex_string), to: VintageNetSupplicant.WPSData
end
