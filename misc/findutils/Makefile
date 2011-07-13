# $OpenBSD: Makefile,v 1.20 2011/07/13 14:10:22 naddy Exp $

COMMENT=		finds and then operates on files

DISTNAME=		findutils-4.4.2
CATEGORIES=		misc
REVISION=		0

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
# We don't have fdopendir() but the included gnulib assumes we do if it
# finds openat(), so poison the autoconf cache.
CONFIGURE_ENV+=		ac_cv_func_openat=no

MAKE_FLAGS=		localstatedir=/var/db
USE_GROFF =		Yes

.include <bsd.port.mk>
