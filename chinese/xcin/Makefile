# $OpenBSD: Makefile,v 1.1.1.1 2000/05/31 09:54:43 kevlo Exp $

DISTNAME=	xcin-2.3.04-3
PKGNAME=	zh-xcin-2.3.04
CATEGORIES=	chinese
NEED_VERSION=   1.230
MASTER_SITES=	ftp://xcin.linux.org.tw/pub/xcin/xcin/old/ \
		ftp://ftp.ncu.edu.tw/OS/Linux/Chinese/xcin/xcin/ \
		ftp://linux.cis.nctu.edu.tw/packages/chinese/X/xcin/xcin/

MAINTAINER=	kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	${LOCALBASE}/lib/X11/fonts/chinese/taipei16.pcf.gz::chinese/taipeifonts

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--os=OpenBSD --no-menu
FAKE=		Yes

CINS=	cj.cin cj.tab cj.tab.rev phone.tab phone.cin phone.tab phone.tab.rev \
	pinyin.cin pinyin.tab pinyin.tab.rev array30.cin array30.tab \
	array30.tab.rev zmdbosh.cin  zmdbosh.tab zmdbosh.tab.rev 

BINS=	cin2tab et.kbm et26.kbm hsu.kbm lphrase phs_out pho.sel1st \
	pho.tab pin2tsin sample.phs.out tsa2d tsa2rel tsd2a \
	tsin tsin.idx tsin.rel tsin_pin.map tsin.rel.src tsin.src \
	voca.box zo.kbm

HOWTOS=	Boshiamy.HOWTO Xfonts.HOWTO cin2tab.HOWTO xcin.HOWTO

post-configure:
	@cp ${FILESDIR}/config.status ${WRKSRC}

post-extract:
	@cp ${FILESDIR}/OpenBSD ${WRKSRC}/script/os_def

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xcin/docs

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/xcin ${PREFIX}/bin 
	${INSTALL_MAN} ${WRKSRC}/doc/man/cin2tab.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/xcin.1 ${PREFIX}/man/man1
	@for i in ${CINS} ; do cp $(WRKSRC)/input_tab/$$i ${PREFIX}/lib/xcin; done
	@for i in ${BINS} ; do cp $(WRKSRC)/src/$$i ${PREFIX}/lib/xcin; done
	@for i in ${HOWTOS} ; do cp $(WRKSRC)/doc/howto/$$i ${PREFIX}/lib/xcin/docs; done

.include <bsd.port.mk>
