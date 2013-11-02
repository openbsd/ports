# $OpenBSD: Makefile,v 1.31 2013/11/02 09:02:56 ajacoutot Exp $

COMMENT=		convert ASCII files to PostScript

DISTNAME=		enscript-1.6.3
REVISION=		3
CATEGORIES=     	print

HOMEPAGE=		http://www.codento.com/people/mtr/genscript/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m

MASTER_SITES=		${HOMEPAGE} \
			${MASTER_SITE_GNU:=enscript/}

CONFIGURE_STYLE=	gnu
# gettext detection is broken and the translations are severely lacking
CONFIGURE_ARGS=		--disable-nls
USE_GROFF =		Yes

.include <bsd.port.mk>
