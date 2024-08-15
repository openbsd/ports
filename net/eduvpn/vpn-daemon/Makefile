COMMENT=	OpenVPN and WireGuard Management Daemon

BROKEN-i386=	unix.SOCK_CLOEXEC/unix.SOCK_NONBLOCK aren't listed in golang.org/x/sys/unix for openbsd_386

V=		3.2.0
DISTNAME=	vpn-daemon-$V

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	c pthread

BUILD_DEPENDS=	lang/go

MAKE_FLAGS=	GOBUILDFLAGS="-v -buildvcs=false -p=${MAKE_JOBS}"
ALL_TARGET=	vpn-daemon
PORTHOME=	${WRKDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vpn-daemon
	cd ${WRKSRC}; ${INSTALL_DATA} *.md LICENSE ${PREFIX}/share/doc/vpn-daemon/

.include <bsd.port.mk>
