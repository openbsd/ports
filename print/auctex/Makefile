# $OpenBSD: Makefile,v 1.6 2007/10/01 11:42:30 steven Exp $

COMMENT=	extensible emacs interface for TeX

DISTNAME=	auctex-11.14
PKGNAME=	${DISTNAME}p1
CATEGORIES=	print

HOMEPAGE=	http://www.gnu.org/software/auctex/

MAINTAINER=	Rich Cannings <cannings@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=auctex/11.14/}

FAKE_FLAGS=	lispdir=${DESTDIR}${PREFIX}/share/emacs/site-lisp

RUN_DEPENDS=	:emacs-21.*:editors/emacs21 \
		::print/texlive/base
BUILD_DEPENDS=	:emacs-21.*:editors/emacs21

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/emacs/site-lisp/auctex

.include <bsd.port.mk>
