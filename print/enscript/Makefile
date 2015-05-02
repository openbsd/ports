# $OpenBSD: Makefile,v 1.32 2015/05/02 09:39:05 ajacoutot Exp $

COMMENT=		convert ASCII files to PostScript

DISTNAME=		enscript-1.6.3
REVISION=		4
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
