# OpenBSD ports makefile for:	mpage
#
# Version required:     mpage 2.5
# Date created:         August, 10th 1999
# Whom:                 Ian McWilliam
# $OpenBSD: Makefile,v 1.7 2000/04/09 17:37:52 espie Exp $


DISTNAME=	mpage-2.5
CATEGORIES=	print
FAKE=No
MASTER_SITES=	ftp://ftp.mesa.nl/pub/mpage/
EXTRACT_SUFX=	.tgz

MAINTAINER=	ianm@cit.nepean.uws.edu.au

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

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
