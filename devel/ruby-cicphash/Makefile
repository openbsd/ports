# $OpenBSD: Makefile,v 1.1.1.1 2010/12/09 21:43:46 jeremy Exp $

COMMENT =	case insensitive, case preserving hash class for ruby

DISTNAME =	cicphash-1.0.0
CATEGORIES =	devel

HOMEPAGE=	http://cicphash.rubyforge.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

do-regress:
	cd ${WRKSRC} && ${RUBY} -I . test/test_cicphash.rb

.include <bsd.port.mk>
