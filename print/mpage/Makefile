# OpenBSD ports makefile for:	mpage
#
# Version required:     mpage 2.5
# Date created:         August, 10th 1999
# Whom:                 Ian McWilliam
# $OpenBSD: Makefile,v 1.4 2000/02/11 01:10:11 espie Exp $


DISTNAME=	mpage-2.5
CATEGORIES=	print
MASTER_SITES=	ftp://ftp.mesa.nl/pub/mpage/
EXTRACT_SUFX=	.tgz

MAINTAINER=	ianm@cit.nepean.uws.edu.au

NO_PACKAGE=	package must be made manually with three paper sizes

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
