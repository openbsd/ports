# OpenBSD ports makefile for:	mpage
#
# Version required:     mpage 2.5
# Date created:         August, 10th 1999
# Whom:                 Ian McWilliam
# $OpenBSD: Makefile,v 1.15 2001/06/20 01:43:32 pvalchev Exp $

COMMENT=	"print multiple pages per sheet on PostScript printer"

DISTNAME=	mpage-2.5
CATEGORIES=	print
MASTER_SITES=	ftp://ftp.mesa.nl/pub/mpage/
EXTRACT_SUFX=	.tgz
NEED_VERSION=	1.402

MAINTAINER=	Ian McWilliam <i.mcwilliam@uws.edu.au>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=us_letter legal a4
FLAVOR?=a4


fetch-depends:
.if ${FLAVOR:L} == "us_letter"
MAKE_ENV+=	PAGESIZE=PAGE_LETTER
.elif ${FLAVOR:L} == "legal"
MAKE_ENV+=	PAGESIZE=PAGE_LEGAL
.elif ${FLAVOR:L} == "a4"
MAKE_ENV+=	PAGESIZE=PAGE_A4
.else
	@echo ""
	@echo >&2 "Unknown flavor: ${FLAVOR}"
	@echo >&2 "You must set ONE flavor: ${FLAVORS}"
	@echo ""
	@exit 1
.endif

.include <bsd.port.mk>
