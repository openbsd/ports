# $OpenBSD: Makefile,v 1.16 2002/10/24 22:20:04 naddy Exp $

COMMENT=	"Tcl/Tk CD player"
DISTNAME=	xcd-1.6
CATEGORIES=	audio
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
WRKDIST=	${WRKDIR}/xcd

MAKE_ENV=	CC="${CC}"
RUN_DEPENDS=	::x11/tk/8.3

do-configure:
	cd ${WRKDIST} && \
		sed -e 's,wish4.1,wish8.3,' <xcd.in >xcd.in.new && \
		mv -f xcd.in.new xcd.in

NO_REGRESS=	Yes

.include <bsd.port.mk>
