# $OpenBSD: Makefile,v 1.13 2000/03/24 23:28:28 espie Exp $

DISTNAME=	wget-1.5.3
CATEGORIES=	net
NEED_VERSION=	 1.230
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= wget

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	intl::devel/gettext

GNU_CONFIGURE=	Yes
CONFIGURE_ENV=	CPPFLAGS="-I/usr/local/include" \
		LDFLAGS="-L/usr/local/lib"

post-install:
	@install-info ${PREFIX}/info/wget.info ${PREFIX}/info/dir
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL


.include <bsd.port.mk>
