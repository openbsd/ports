# $OpenBSD: Makefile,v 1.8 2001/01/28 07:28:07 kevlo Exp $

DISTNAME=	xcin-2.3.04-3
PKGNAME=	zh-xcin-2.3.04
CATEGORIES=	chinese
NEED_VERSION=   1.307
MASTER_SITES=	ftp://xcin.linux.org.tw/pub/xcin/xcin/old/ \
		ftp://ftp.shellhung.org/pub/OpenBSD/packages/chinese/

HOMEPAGE=	http://xcin.linux.org.tw/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	${LOCALBASE}/lib/X11/fonts/chinese/taipei16.pcf.gz::chinese/taipeifonts

CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS=	--os=OpenBSD --no-menu

CINS=	cj.cin cj.tab cj.tab.rev phone.tab phone.cin phone.tab phone.tab.rev \
	pinyin.cin pinyin.tab pinyin.tab.rev array30.cin array30.tab \
	array30.tab.rev zmdbosh.cin  zmdbosh.tab zmdbosh.tab.rev 

BINS=	cin2tab et.kbm et26.kbm hsu.kbm lphrase phs_out pho.sel1st \
	pho.tab pin2tsin sample.phs.out tsa2d tsa2rel tsd2a \
	tsin tsin.idx tsin.rel tsin_pin.map tsin.rel.src tsin.src \
	voca.box zo.kbm

post-configure:
	mv ${WRKSRC}/config.status ${WRKSRC}/config.status.orig
	sed -e '/OPT_XCIN_CFONT/s/=.*/=-taipei-ming-medium-r-normal--16-160-75-75-c-160-big5-0/' -e '/OPT_XCIN_EFONT/s/=.*/=8x16/' -e '/PATH_XCIN_DIR/s!=.*!=/usr/local/lib/xcin!' ${WRKSRC}/config.status.orig > ${WRKSRC}/config.status

post-extract:
	mv ${WRKSRC}/script/os_def/FreeBSD ${WRKSRC}/script/os_def/FreeBSD.orig
	sed -e '/OS/s/=.*/=OpenBSD/' -e '/CFLAGS/s/=.*/=-O2/' ${WRKSRC}/script/os_def/FreeBSD.orig > ${WRKSRC}/script/os_def/OpenBSD

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xcin/docs

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/xcin ${PREFIX}/bin 
	@for i in ${CINS} ; do cp $(WRKSRC)/input_tab/$$i ${PREFIX}/lib/xcin; done
	@for i in ${BINS} ; do cp $(WRKSRC)/src/$$i ${PREFIX}/lib/xcin; done

.include <bsd.port.mk>
