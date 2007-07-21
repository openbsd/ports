# $OpenBSD: Makefile,v 1.1.1.1 2007/07/21 17:09:23 kili Exp $

COMMENT=		"language and library specification for Haskell"

# Strictly speaking, there's no version at all, just the report of the
# programming language "Haskell 98". I don't care for now that there may
# be future errata, since the next major language specification is on
# the way (hopefully with a more conservative naming scheme, i.e.
# something like Haskell 2.0) and will be released very soon now[tm].
DISTNAME=		haskell98-report-html
PKGNAME=		haskell-report-98

CATEGORIES=		books lang

HOMEPAGE=		http://haskell.org/definition/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# Copy and distribute for any purpose, but only completely.
# When modified, mark as such and don't call the thing Haskell.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

PKG_ARCH=		*

NO_BUILD=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/haskell-report
	cd ${WRKSRC} && umask 022 && \
		pax -rw . ${PREFIX}/share/doc/haskell-report

.include <bsd.port.mk>
