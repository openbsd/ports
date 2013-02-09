# $OpenBSD: Makefile,v 1.29 2013/02/09 14:49:52 sthen Exp $

COMMENT=		convert ASCII files to PostScript

DISTNAME=		enscript-1.6.3
REVISION=		2
CATEGORIES=     	print

HOMEPAGE=		http://www.codento.com/people/mtr/genscript/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE} \
			${MASTER_SITE_GNU:=enscript/}

FLAVORS=		a4
FLAVOR?=		

WANTLIB=		c m

CONFIGURE_STYLE=	gnu
# gettext detection is broken and the translations are severely lacking
CONFIGURE_ARGS=		--disable-nls
USE_GROFF =		Yes

.if !${FLAVOR:Ma4}
CONFIGURE_ARGS+=	--with-media=Letter
.endif

.include <bsd.port.mk>
