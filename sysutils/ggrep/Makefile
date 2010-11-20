# $OpenBSD: Makefile,v 1.10 2010/11/20 17:22:41 espie Exp $

COMMENT=	GNU versions of grep pattern matching utilities

DISTNAME=	grep-2.5.1
PKGNAME=	g${DISTNAME}
REVISION =	1
CATEGORIES=	sysutils
HOMEPAGE=	http://www.gnu.org/software/grep/grep.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcre

MASTER_SITES=	${MASTER_SITE_GNU:=grep/}

MODULES=	devel/gettext
LIB_DEPENDS=	devel/pcre

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=g
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_GROFF =	Yes
CONFIGURE_ENV+= ac_cv_func_mbrtowc=no

post-build:
	@perl -i -pe 's/\bgrep\b/ggrep/g' ${WRKBUILD}/src/[ef]grep

.include <bsd.port.mk>
