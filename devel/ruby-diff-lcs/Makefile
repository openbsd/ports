# $OpenBSD: Makefile,v 1.2 2010/09/23 22:30:26 jeremy Exp $

COMMENT =		port of Algorithm::Diff that uses the LCS algorithm

DISTNAME =		diff-lcs-1.1.2
PKGNAME =		ruby-${DISTNAME}
REVISION =      	0
CATEGORIES =		devel lang/ruby

# Perl Artistic
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=ruwiki/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

.include <bsd.port.mk>
