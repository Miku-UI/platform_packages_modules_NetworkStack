/*
**
** Copyright (C) 2019 The Android Open Source Project
**
** Licensed under the Apache License, Version 2.0 (the "License");
** you may not use this file except in compliance with the License.
** You may obtain a copy of the License at
**
**     http://www.apache.org/licenses/LICENSE-2.0
**
** Unless required by applicable law or agreed to in writing, software
** distributed under the License is distributed on an "AS IS" BASIS,
** WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
** See the License for the specific language governing permissions and
** limitations under the License.
*/

package android.net;

import android.net.InitialConfigurationParcelable;
import android.net.Layer2InformationParcelable;
import android.net.Network;
import android.net.ScanResultInfoParcelable;
import android.net.StaticIpConfiguration;
import android.net.apf.ApfCapabilities;
import android.net.networkstack.aidl.dhcp.DhcpOption;

import java.util.List;

@JavaDerive(toString=true)
parcelable ProvisioningConfigurationParcelable {
    /** @deprecated use ipv4ProvisioningMode instead. */
    boolean enableIPv4;
    /** @deprecated use ipv6ProvisioningMode instead. */
    boolean enableIPv6;
    boolean usingMultinetworkPolicyTracker;
    boolean usingIpReachabilityMonitor;
    int requestedPreDhcpActionMs;
    InitialConfigurationParcelable initialConfig;
    StaticIpConfiguration staticIpConfig;
    ApfCapabilities apfCapabilities;
    int provisioningTimeoutMs;
    int ipv6AddrGenMode;
    Network network;
    String displayName;
    boolean enablePreconnection;
    @nullable ScanResultInfoParcelable scanResultInfo;
    @nullable Layer2InformationParcelable layer2Info;
    @nullable List<DhcpOption> options;
    int ipv4ProvisioningMode;
    int ipv6ProvisioningMode;
    boolean uniqueEui64AddressesOnly;
    int creatorUid;
    int hostnameSetting;
}
