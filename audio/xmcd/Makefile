# $OpenBSD: Makefile,v 1.52 2019/07/12 20:43:42 sthen Exp $

COMMENT=	Motif CD player

DISTNAME=	xmcd-2.6
REVISION=	15
CATEGORIES=	audio
HOMEPAGE=	http://www.amb.org/xmcd/

PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xm Xmu Xpm Xt c curses m

MASTER_SITES=	https://distfiles.nl/

LIB_DEPENDS+=	x11/motif

CONFIGURE_STYLE= imake
MAKE_ENV+=	MOTIFLIB='-L${LOCALBASE}/lib -lXm'
NO_TEST=	Yes

XMCDLIB=	${PREFIX}/share/xmcd

do-install:
	@cd ${WRKSRC}; env BATCH_BINDIR=${PREFIX}/bin \
	    BATCH_LIBDIR=${PREFIX}/share \
	    BATCH_MANDIR=${PREFIX}/man/man1 \
	    BATCH_CDDBDIR=${WRKINST}/var/db/xmcd/cddb \
	    BATCH_DISCOGDIR=${WRKINST}/var/db/xmcd/discog \
	    sh install.sh -n -b

post-install:
	chmod u-s ${PREFIX}/libexec/xmcd/*
	mv ${XMCDLIB}/docs ${PREFIX}/share/doc/xmcd
	cd ${XMCDLIB}; ln -s ../doc/xmcd docs
	mv ${XMCDLIB}/config/.tbl ${XMCDLIB}/tbl
	mv ${XMCDLIB}/config/config.sh ${PREFIX}/sbin/xmcdconfig
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xmcd
	cd ${XMCDLIB}/config; for i in common.cfg device.cfg sites; do \
	    mv $$i ${PREFIX}/share/examples/xmcd/$$i; done
	rmdir ${XMCDLIB}/config; ln -s ${SYSCONFDIR}/xmcd ${XMCDLIB}/config
	mv ${XMCDLIB}/app-defaults/XMcd ${PREFIX}/lib/X11/app-defaults/XMcd
	rm -f ${XMCDLIB}/cddb ${XMCDLIB}/discog
	for i in cddb discog; do ln -s /var/db/xmcd/$$i ${XMCDLIB}/$$i; done
	for i in bkgnd.gif xmcdlogo.gif discog.html; do \
	    mv ${WRKINST}/var/db/xmcd/discog/$$i \
	    ${PREFIX}/share/examples/xmcd/$$i; done
	cd ${PREFIX}/bin; \
	    rm -f xmcd cda cddbcmd dp2xmcd wm2xmcd; mv .xmcd_start xmcd; \
	    for i in cda cddbcmd dp2xmcd wm2xmcd; do ln -s xmcd $$i; done
	sed -i -e 's,\@PREFIX@,${TRUEPREFIX},; s,\@X11BASE@,${X11BASE},;' \
		-e 's,\@SYSCONFDIR@,${SYSCONFDIR},;' \
	    ${PREFIX}/bin/xmcd ${PREFIX}/sbin/xmcdconfig \
	    ${PREFIX}/lib/X11/app-defaults/XMcd \
	    ${PREFIX}/man/man1/cda.1 ${PREFIX}/man/man1/xmcd.1
	sed -i 's,${WRKINST},,g' ${PREFIX}/bin/xmcd \
	    ${XMCDLIB}/scripts/genidx ${PREFIX}/sbin/xmcdconfig \
	    ${PREFIX}/share/examples/xmcd/discog.html

.include <bsd.port.mk>
