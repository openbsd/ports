# $OpenBSD: Makefile,v 1.4 2002/12/29 20:31:40 fgsch Exp $
# Uses pthreads

COMMENT=	"resource manager for PCSC"

DISTNAME=	pcsc-lite-1.0.1
CATEGORIES=	security
MASTER_SITES=	http://www.linuxnet.com/middleware/files/

HOMEPAGE=	http://www.linuxnet.com/

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}	\
		--enable-static		\
		--enable-daemon		\
		--enable-debug		\
		--enable-syslog		\
		--enable-threadsafe
CONFIGURE_ENV=	PTHREAD_LIBS=-pthread

USE_GMAKE=	Yes
NO_REGRESS=	Yes

EXDIR=		${PREFIX}/share/examples/pcscd

post-patch:
	@cd ${WRKSRC}/build; \
	${PATCH} --forward --quiet -E < \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltconfig && \
	${PATCH} --forward --quiet -E < \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltmain_sh

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_DATA} ${FILESDIR}/reader.conf.sample ${EXDIR}

.include <bsd.port.mk>
