# $OpenBSD: Makefile,v 1.12 2000/10/22 14:02:58 espie Exp $

DISTNAME=	xcd-1.6
CATEGORIES=	audio
NEED_VERSION=	1.230
MASTER_SITES=	ftp://ftp.obs-besancon.fr/pub/outgoing/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
MAKE_FLAGS=BINDIR=${PREFIX}/bin \
	CDDIR=${PREFIX}/lib/xcd \
	MANDIR=${PREFIX}/man/man1

FAKE_FLAGS=BINDIR=${WRKINST}${PREFIX}/bin \
	CDDIR=${WRKINST}${PREFIX}/lib/xcd \
	MANDIR=${WRKINST}${PREFIX}/man/man1
WRKDIST=		${WRKDIR}/xcd

RUN_DEPENDS=    wish8.3::x11/tk/8.3

do-configure:
	cd ${WRKDIST} && \
		sed -e 's,wish4.1,wish8.3,' <xcd.in >xcd.in.new && \
		mv -f xcd.in.new xcd.in

.include <bsd.port.mk>
