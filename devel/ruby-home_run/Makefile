# $OpenBSD: Makefile,v 1.2 2011/03/14 17:46:53 jeremy Exp $

COMMENT =	fast Date/DateTime classes for ruby

DISTNAME =	home_run-1.0.1
CATEGORIES =	devel

HOMEPAGE=	http://github.com/jeremyevans/home_run

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext
REGRESS_DEPENDS = devel/ruby-mspec,${MODRUBY_FLAVOR} \
		${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_REGRESS = rake
do-regress:
	cd ${WRKSRC} && RUBY=${RUBY} RUBYLIB=$$(dirname `${GEM} which date_ext`) ${RAKE}

.include <bsd.port.mk>
