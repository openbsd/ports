# $OpenBSD: Makefile,v 1.15 2002/01/04 04:05:13 brad Exp $
# $FreeBSD: Makefile,v 1.2 1999/08/31 02:09:14 peter Exp $

COMMENT=	"XML 1.0 parser written in C"

DISTNAME=	expat-1.95.2
CATEGORIES=	textproc
NEED_VERSION=	1.500
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= expat

HOMEPAGE=	http://expat.sourceforge.net/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= gnu dest
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/conftools
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-patch:
	@cd ${WRKSRC}/conftools; \
	${PATCH} --forward --quiet -E < \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig && \
	${PATCH} --forward --quiet -E < \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xmlwf/xmlwf ${PREFIX}/bin

.include <bsd.port.mk>
