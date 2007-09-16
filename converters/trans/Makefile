# $OpenBSD: Makefile,v 1.17 2007/09/16 01:40:28 merdely Exp $

COMMENT=	character encoding converter generator package

DISTNAME=       trans120
PKGNAME=        trans-1.20p0
CATEGORIES=     converters russian

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no fee
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=   http://www.kostis.net/freeware/

LIBDIR= ${PREFIX}/lib/trans
ALL= transhtm transiso transce8 transtab checkiso checkuni

do-install:
	cd ${WRKSRC}/src && $(INSTALL_PROGRAM) $(ALL) ${PREFIX}/bin
	cd ${WRKSRC}/src && \
	for i in $(ALL); do \
		$(INSTALL_MAN) $$i.man ${PREFIX}/man/cat1/$$i.0; \
	done
	${INSTALL_DATA_DIR} -o ${BINOWN} -g ${BINGRP} -m 755 \
		${LIBDIR}/cedf ${LIBDIR}/xlt ${LIBDIR}/doc ${LIBDIR}/bin \
		${LIBDIR}/src
	cd ${WRKSRC}/src && \
		$(INSTALL_SCRIPT) checkall chkuni mkhtml mklist mkxlt \
		${LIBDIR}/src
	cd ${WRKSRC} && \
		$(INSTALL_DATA) README encoding.lis ${LIBDIR}
	cd ${WRKSRC}/src && \
		$(INSTALL_DATA) datatype.h ${LIBDIR}/src
	cd ${WRKSRC}/bin && \
		$(INSTALL_DATA) one trans.[ch] trans.man utimbuf.h utf.[ch] \
		${LIBDIR}/bin
	cd ${WRKSRC}/cedf && $(INSTALL_DATA) * ${LIBDIR}/cedf
	cd ${WRKSRC}/doc && $(INSTALL_DATA) * ${LIBDIR}/doc
	cd ${WRKSRC}/xlt && $(INSTALL_DATA) * ${LIBDIR}/xlt

REGRESS_TARGET=	check
REGRESS_DEPENDS=::converters/trans
.include <bsd.port.mk>
