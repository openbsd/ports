# $OpenBSD: Makefile,v 1.21 2010/10/19 07:54:26 espie Exp $

COMMENT=	texinfo to HTML converter

DISTNAME=	texi2html-1.82
CATEGORIES=	textproc

HOMEPAGE=	http://www.nongnu.org/texi2html/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=texi2html/}

CONFIGURE_STYLE= gnu

USE_GMAKE=	Yes
USE_GROFF =	Yes

MAKE_FLAGS+=	texinfohtmldir=${PREFIX}/share/doc/texi2html

REGRESS_DEPENDS=	::textproc/gsed

pre-regress:
	@ln -s ${LOCALBASE}/bin/gsed ${WRKDIR}/bin/sed

.include <bsd.port.mk>
