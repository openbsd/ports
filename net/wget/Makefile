# $OpenBSD: Makefile,v 1.19 2000/07/01 16:22:35 brad Exp $

DISTNAME=	wget-1.5.3
CATEGORIES=	net
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= wget

HOMEPAGE=	http://www.gnu.org/software/wget/

LIB_DEPENDS=	intl::devel/gettext

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# Less broken way to force Rebuild...
post-patch:
	@echo '.PHONY: $${SUBDIRS}' >>${WRKBUILD}/Makefile.in

CONFIGURE_STYLE= gnu dest
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
