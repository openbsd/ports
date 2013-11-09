# $OpenBSD: Makefile,v 1.13 2013/11/09 23:19:03 naddy Exp $

COMMENT=	extensible emacs interface for TeX

DISTNAME=	auctex-11.14
REVISION=	5
CATEGORIES=	print

HOMEPAGE=	https://www.gnu.org/software/auctex/

MAINTAINER=	Rich Cannings <cannings@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=auctex/11.14/}

FAKE_FLAGS=	lispdir=${DESTDIR}${PREFIX}/share/emacs/site-lisp

RUN_DEPENDS=	emacs->=21,<22:editors/emacs21 \
		print/texlive/base
BUILD_DEPENDS=	emacs->=21,<22:editors/emacs21

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/emacs/site-lisp/auctex

.include <bsd.port.mk>
