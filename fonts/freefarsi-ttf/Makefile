COMMENT=		free TrueType Persian fonts

MODFONT_FAMILY =	freefarsi
MODFONT_VERSION =	1.0.0b
DISTNAME=		freefarsi-ttf-${MODFONT_VERSION}
PKGNAME =		freefarsi-ttf-${MODFONT_VERSION}
REVISION=		2
CATEGORIES=		fonts x11

HOMEPAGE=		https://sourceforge.net/projects/fpf/

# GPLv2+
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =		.tar.gz

MODULES =		font

# The original distfile contains .sfd files, the Debian package contains
# .ttf files. These are the files we install.
SITES=			https://distfiles.sigtrap.nl/

NO_BUILD=		Yes
NO_TEST=		Yes

.include <bsd.port.mk>
