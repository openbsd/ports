# $OpenBSD: Makefile,v 1.21 2009/08/10 06:30:30 kili Exp $

COMMENT=	chinese input utility for X

DISTNAME=	xcin-2.3.04-3
PKGNAME=	zh-xcin-2.3.04p1
CATEGORIES=	chinese

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 c pthread-stubs xcb

RUN_DEPENDS=	::chinese/taipeifonts

USE_X11=	Yes

CONFIGURE_STYLE=gnu old dest
CONFIGURE_ARGS=	--os=OpenBSD --no-menu

NO_REGRESS=	Yes

# gcc 3.3.5 internal compiler error
.if ${MACHINE_ARCH} == "mips64"
EXTRA_CFLAGS=	-O0
.endif

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" EXTRA_CFLAGS="${EXTRA_CFLAGS}"

CINS=	cj.cin cj.tab cj.tab.rev phone.tab phone.cin phone.tab phone.tab.rev \
	pinyin.cin pinyin.tab pinyin.tab.rev array30.cin array30.tab \
	array30.tab.rev zmdbosh.cin  zmdbosh.tab zmdbosh.tab.rev 

BINS=	cin2tab et.kbm et26.kbm hsu.kbm lphrase phs_out pho.sel1st \
	pho.tab pin2tsin sample.phs.out tsa2d tsa2rel tsd2a \
	tsin tsin.idx tsin.rel tsin_pin.map tsin.rel.src tsin.src \
	voca.box zo.kbm

post-extract:
	mv ${WRKSRC}/script/os_def/FreeBSD ${WRKSRC}/script/os_def/FreeBSD.orig
	sed -e '/OS/s/=.*/=OpenBSD/' -e '/CFLAGS/s/=.*/=-O2/' ${WRKSRC}/script/os_def/FreeBSD.orig > ${WRKSRC}/script/os_def/OpenBSD

post-configure:
	mv ${WRKSRC}/config.status ${WRKSRC}/config.status.orig
	sed -e '/OPT_XCIN_CFONT/s/=.*/=-taipei-ming-medium-r-normal--16-160-75-75-c-160-big5-0/' -e '/OPT_XCIN_EFONT/s/=.*/=8x16/' ${WRKSRC}/config.status.orig > ${WRKSRC}/config.status

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xcin/docs

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/xcin ${PREFIX}/bin 
	@for i in ${CINS} ; do cp $(WRKSRC)/input_tab/$$i ${PREFIX}/lib/xcin; done
	@for i in ${BINS} ; do cp $(WRKSRC)/src/$$i ${PREFIX}/lib/xcin; done

.include <bsd.port.mk>
