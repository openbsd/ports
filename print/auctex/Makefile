# $OpenBSD: Makefile,v 1.1.1.1 2004/02/21 01:41:12 pvalchev Exp $

COMMENT=	"extensible emacs interface for TeX"

DISTNAME=	auctex-11.14
CATEGORIES=	print

HOMEPAGE=	http://www.gnu.org/software/auctex/

MAINTAINER=	Rich Cannings <cannings@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=auctex/11.14/}

FAKE_FLAGS=	lispdir=${DESTDIR}/${PREFIX}/share/emacs/site-lisp

BUILD_DEPENDS=	:emacs-21.*:editors/emacs21
RUN_DEPENDS=	${BUILD_DEPENDS} \
		:teTeX_base-*:print/teTeX/base

.include <bsd.port.mk>
