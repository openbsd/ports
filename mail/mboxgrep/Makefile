# $OpenBSD: Makefile,v 1.14 2015/06/19 12:44:49 ajacoutot Exp $

COMMENT=		scan mailboxes for messages matching a regular expression

DISTNAME=		mboxgrep-0.7.9
CATEGORIES=		mail

HOMEPAGE=		http://www.mboxgrep.org/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += bz2 c pcre z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mboxgrep/}

LIB_DEPENDS=		archivers/bzip2 \
			devel/pcre

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LIBS="-L${LOCALBASE}/lib"

# md5.c:122: warning: incompatible implicit declaration of built-in function 'bcopy'
CFLAGS +=		-DSTDC_HEADERS

NO_TEST=		Yes

.include <bsd.port.mk>
