# $OpenBSD: Makefile,v 1.14 2007/09/15 20:59:42 merdely Exp $

COMMENT=	C/C++,Prolog,Perl,PHP3 and Java sources to HTML converter

DISTNAME=	source-highlight-1.9
CATEGORIES=	textproc

HOMEPAGE=	http://www.gnu.org/software/src-highlite/source-highlight.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c m stdc++ 

MASTER_SITES=	${MASTER_SITE_GNU:=src-highlite/}

CONFIGURE_STYLE= gnu

REGRESS_TARGET=	check

.include <bsd.port.mk>
