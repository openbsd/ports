# $OpenBSD: Makefile,v 1.26 2004/10/09 16:51:44 jolan Exp $

COMMENT=	"MIDI to WAV renderer and player"
DISTNAME=	timidity-0.2i
CATEGORIES=	audio

MASTER_SITES=	http://sca.uwaterloo.ca/www.cgs.fi/tt/timidity/
MASTER_SITES0=	ftp://ftp.kiarchive.ru/pub/misc/hardware/soundcard/gus/
TIINS=	goemon.tgz
DISTFILES=	${TIINS}:0 ${DISTNAME}.tar.gz
EXTRACT_ONLY=	${DISTNAME}.tar.gz

PERMIT_PACKAGE_CDROM=	"copyrighted patches"
PERMIT_PACKAGE_FTP=	"copyrighted patches"
PERMIT_DISTFILES_CDROM=	"copyrighted patches"
PERMIT_DISTFILES_FTP=	"copyrighted patches"


FLAVORS=motif curses slang
FLAVOR?=motif

.if ${FLAVOR:L:Mcurses}
MAKE_FLAGS+=-DCURSES
.endif
.if ${FLAVOR:L:Mmotif} || ${FLAVOR:L:Mlesstif}
MAKE_FLAGS+=-DMOTIF
USE_MOTIF=	any
.endif
.if ${FLAVOR:L:Mslang}
MAKE_FLAGS+=-DSLANG
LIB_DEPENDS+=slang.::devel/libslang
.endif

MAKE_ENV=	CC="${CC}"

NO_REGRESS=	Yes

INSTALL_TARGET= install.all
FAKE_FLAGS=PREFIX=${PREFIX} DESTDIR=${WRKINST} ${MAKE_FLAGS}

post-install:
	${INSTALL_MAN} ${WRKSRC}/timidity.1 ${PREFIX}/man/man1
	@cd ${PREFIX}/lib/timidity && \
	${TAR} zxf ${FULLDISTDIR}/${TIINS} && \
	cp goemon.cfg goemon.cfg.bak && \
	sed 's=dir goemon=dir ${TRUEPREFIX}/lib/timidity/goemon=' \
	   < goemon.cfg.bak > goemon.cfg && \
	rm -f goemon.cfg.bak

.include <bsd.port.mk>
