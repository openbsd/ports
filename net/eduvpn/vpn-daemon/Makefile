COMMENT=	OpenVPN and WireGuard Management Daemon

V=		3.0.2
DISTNAME=	vpn-daemon-$V

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/go
WRKDIST=	${WRKDIR}/${DISTNAME}

WANTLIB=	c pthread

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vpn-daemon
	cd ${WRKSRC}; ${INSTALL_DATA} *.md LICENSE ${PREFIX}/share/doc/vpn-daemon/

.include <bsd.port.mk>
