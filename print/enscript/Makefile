# $OpenBSD: Makefile,v 1.20 2005/02/11 17:57:30 naddy Exp $

COMMENT=		"convert ASCII files to PostScript"

DISTNAME=		enscript-1.6.3
CATEGORIES=     	print

HOMEPAGE=		http://people.ssh.fi/mtr/genscript/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://people.ssh.fi/mtr/genscript/ \
			${MASTER_SITE_GNU:=enscript/}

FLAVORS=		a4
FLAVOR?=		

WANTLIB=		c m

CONFIGURE_STYLE=	gnu

.if !${FLAVOR:L:Ma4}
CONFIGURE_ARGS+=	--with-media=Letter
.endif

.include <bsd.port.mk>
