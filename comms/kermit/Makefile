# $OpenBSD: Makefile,v 1.13 2001/09/11 00:20:51 brad Exp $

COMMENT=	"file transfer/terminal emulation"

DISTNAME=	cku192src
PKGNAME=        kermit-6.0.192
CATEGORIES=	comms
NEED_VERSION=	1.435
MASTER_SITES=	ftp://kermit.columbia.edu/kermit/archives/ \
		ftp://ftp.th-darmstadt.de/pub/networking/kermit/ \
		ftp://ftp.std.com/customers2/src/telcom/

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	PREFIX="${PREFIX}" DESTDIR="${WRKINST}"

WRKDIST=	${WRKDIR}

post-extract:
	@cp -f ${FILESDIR}/Makefile ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/kermit
	${INSTALL_DATA} ${FILESDIR}/dot.kermrc ${PREFIX}/share/examples/kermit

.include <bsd.port.mk>
