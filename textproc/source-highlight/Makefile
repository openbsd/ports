# $OpenBSD: Makefile,v 1.6 2002/06/25 09:37:02 kevlo Exp $

COMMENT=	"C/C++ and Java sources to HTML converter"

DISTNAME=	source-highlight-1.4
CATEGORIES=	textproc
NEED_VERSION=	1.504

HOMEPAGE=	http://www.gnu.org/software/src-highlite/source-highlight.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_GNU:=source-highlight/}

CONFIGURE_STYLE= gnu

REGRESS_TARGET=	check

.include <bsd.port.mk>
