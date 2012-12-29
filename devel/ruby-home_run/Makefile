# $OpenBSD: Makefile,v 1.9 2012/12/29 20:52:13 landry Exp $

COMMENT =	fast Date/DateTime classes for ruby

BROKEN-sparc64 = Assembler messages: Error: Illegal operands on date_ext.c
DISTNAME =	home_run-1.0.6
REVISION =	0
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
	cd ${WRKSRC} && ${RUBY} -S home_run ${RAKE}

.include <bsd.port.mk>
