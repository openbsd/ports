COMMENT=	daemon keeping track of UPnP devices up

DISTNAME=	minissdpd-1.6.0

WANTLIB += c

USE_GMAKE=	Yes
MAKE_FLAGS=	CC="${CC}"

FAKE_FLAGS=	MANINSTALLDIR=${TRUEPREFIX}/man \
		SBININSTALLDIR=${TRUEPREFIX}/sbin

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/minissdpd.1 \
		${PREFIX}/man/man1/minissdpd.1
	rm -r ${WRKINST}/etc/init.d

.include <bsd.port.mk>
