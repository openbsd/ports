# $OpenBSD: Makefile,v 1.12 2013/03/11 11:37:53 espie Exp $

COMMENT=	extensible emacs interface for TeX

DISTNAME=	auctex-11.14
REVISION=	4
CATEGORIES=	print

HOMEPAGE=	http://www.gnu.org/software/auctex/

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
