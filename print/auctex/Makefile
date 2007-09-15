# $OpenBSD: Makefile,v 1.5 2007/09/15 21:36:44 merdely Exp $

COMMENT=	extensible emacs interface for TeX

DISTNAME=	auctex-11.14
PKGNAME=	${DISTNAME}p0
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
		:teTeX_base-*:print/teTeX/base
BUILD_DEPENDS=	:emacs-21.*:editors/emacs21

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/emacs/site-lisp/auctex

.include <bsd.port.mk>
