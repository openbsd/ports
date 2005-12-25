# $OpenBSD: Makefile,v 1.8 2005/12/25 11:15:34 sturm Exp $
# Uses pthreads

COMMENT=	"resource manager for PCSC"

DISTNAME=	pcsc-lite-1.0.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security
SHARED_LIBS=	pcsclite-core	0.2 \
		pcsclite	0.1
MODGNU_SHARED_LIBS=	pcsclite-core	'' \
			pcsclite	''
LIBpcsclite-core_ALIAS=	realpcsclite_core

MASTER_SITES=	http://www.linuxnet.com/middleware/files/

HOMEPAGE=	http://www.linuxnet.com/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}	\
		--enable-static		\
		--enable-daemon		\
		--enable-debug		\
		--enable-syslog		\
		--enable-threadsafe
CONFIGURE_ENV=	PTHREAD_LIBS=-pthread
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
NO_REGRESS=	Yes

EXDIR=		${PREFIX}/share/examples/pcscd

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_DATA} ${FILESDIR}/reader.conf.sample ${EXDIR}

.include <bsd.port.mk>
