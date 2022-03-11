COMMENT =	lightweight shipper for real-time network analytics
REVISION =	0

BEAT =		packetbeat

CONFIGS =	${BEAT}.{reference.yml,yml}
KIBANA_DASHBOARDS = yes

WANTLIB +=	pcap

pre-build:
	cd ${WRKSRC}/${BEAT}/cmd && ${MODGO_CMD} get ${MODGO_FLAGS} -d -v ./...
	chmod u+w \
		${MODGO_WORKSPACE}/pkg/mod/github.com/tsg/gopacket@v0.0.0-20200626092518-2ab8e397a786/pcap/pcap_poll_common.go
	cp ${FILESDIR}/pcap_*.go \
		${MODGO_WORKSPACE}/pkg/mod/github.com/tsg/gopacket@v0.0.0-20200626092518-2ab8e397a786/pcap/
	cp ${FILESDIR}/bindtodevice_bsd.go \
		${MODGO_WORKSPACE}/pkg/mod/github.com/elastic/dhcp@v0.0.0-20200227161230-57ec251c7eb3/dhcpv4/

.include <bsd.port.mk>
