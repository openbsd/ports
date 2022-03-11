COMMENT=		scan mailboxes for messages matching a regular expression

DISTNAME=		mboxgrep-0.7.9
REVISION=		0
CATEGORIES=		mail

HOMEPAGE=		http://www.mboxgrep.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += bz2 c pcre z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mboxgrep/}

LIB_DEPENDS=		archivers/bzip2 \
			devel/pcre

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LIBS="-L${LOCALBASE}/lib"

CFLAGS +=		-DHAVE_CONFIG_H

NO_TEST=		Yes

.include <bsd.port.mk>
