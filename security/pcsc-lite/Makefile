# $OpenBSD: Makefile,v 1.1.1.1 2001/12/07 06:33:19 shell Exp $

COMMENT=	"resource manager for PCSC"
DISTNAME=	pcsc-lite-1.0.1
CATEGORIES=	security
NEED_VERSION=	1.500
MASTER_SITES=	http://www.linuxnet.com/middleware/files/

HOMEPAGE=	http://www.linuxnet.com/

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	lib/pth/pthread.14:pth-1.4.*:devel/pth

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}	\
		--enable-static		\
		--enable-daemon		\
		--enable-debug		\
		--enable-syslog		\
		--enable-threadsafe
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/pth"	\
		LDFLAGS="-L${LOCALBASE}/lib/pth"

USE_GMAKE=	Yes

EXDIR=		${PREFIX}/share/examples/pcscd/

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
