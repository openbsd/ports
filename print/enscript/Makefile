# $OpenBSD: Makefile,v 1.18 2002/07/10 11:56:35 matt Exp $

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

CONFIGURE_STYLE=	gnu automake
CONFIGURE_ARGS+=	--with-media=Letter

.include <bsd.port.mk>

