# OpenBSD ports makefile for:	mpage
#
# Version required:     mpage 2.5
# Date created:         August, 10th 1999
# Whom:                 Ian McWilliam
# $OpenBSD: Makefile,v 1.8 2000/04/14 08:34:24 turan Exp $


DISTNAME=	mpage-2.5
CATEGORIES=	print
MASTER_SITES=	ftp://ftp.mesa.nl/pub/mpage/
EXTRACT_SUFX=	.tgz

MAINTAINER=	ianm@cit.nepean.uws.edu.au

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

FAKE=		Yes
FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

FLAVORS=	us-letter legal a4

.if defined(FLAVOR)
.if ${FLAVOR:L:Mus-letter}
PAGESIZE="PAGE_LETTER"
MAKE_FLAGS+=	PAGESIZE="PAGE_LETTER"
.elif ${FLAVOR:L:Mlegal}
PAGESIZE="PAGE_LETTER"
MAKE_FLAGS+=	PAGESIZE="PAGE_LEGAL"
.elif ${FLAVOR:L:Ma4}
PAGESIZE="PAGE_LETTER"
MAKE_FLAGS+=	PAGESIZE="PAGE_A4"
.endif
.endif

fetch-depends:
.if !defined(NO_WARNINGS)
.if !defined(PAGESIZE)
	@echo ""
	@echo You must define your favorite page size:
	@echo PAGE_LETTER for US letter
	@echo PAGE_LEGAL for legal
	@echo PAGE_A4 for European/Australian A4
	@echo ""
	@echo by setting the enivonment variable PAGESIZE=PAGE_A4
	@echo or by the command \"make PAGESIZE=PAGE_A4\"
	@echo ""
	@exit 1
.endif
.endif

.include <bsd.port.mk>
