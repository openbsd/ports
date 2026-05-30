COMMENT=		scan mailboxes for messages matching a regular expression

V=			0.7.13
DISTNAME=		mboxgrep-${V}

CATEGORIES=		mail

HOMEPAGE=		http://www.mboxgrep.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += bz2 c pcre2-32 z

SITES=			https://git.datatipp.se/dspiljar/mboxgrep/releases/download/${V}/

LIB_DEPENDS=		archivers/bzip2 \
			devel/pcre2

CONFIGURE_STYLE=	gnu

NO_TEST=		Yes

.include <bsd.port.mk>
