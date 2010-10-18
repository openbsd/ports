# $OpenBSD: Makefile,v 1.17 2010/10/18 20:52:09 espie Exp $

COMMENT=		finds and then operates on files

DISTNAME=		findutils-4.4.2
CATEGORIES=		misc

HOMEPAGE=		http://www.gnu.org/software/findutils/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

MASTER_SITES=		${MASTER_SITE_GNU:=findutils/}

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--program-prefix="g"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
MAKE_FLAGS=		localstatedir=/var/db
USE_GROFF =	Yes

.include <bsd.port.mk>
