# OpenBSD ports makefile for:	mpage
#
# Version required:     mpage 2.5
# Date created:         August, 10th 1999
# Whom:                 Ian McWilliam
# $OpenBSD: Makefile,v 1.2 1999/08/28 10:32:03 maja Exp $


DISTNAME=	mpage-2.5
CATEGORIES=	print
MASTER_SITES=	ftp://ftp.mesa.nl/pub/mpage/
EXTRACT_SUFX=	.tgz

MAINTAINER=	ianm@cit.nepean.uws.edu.au

fetch-depends:
.if !defined(NO_WARNINGS)
.if !defined(PAGESIZE)
	@${ECHO} ""
	@${ECHO} You must define your favorite page size:
	@${ECHO} PAGE_LETTER for US letter
	@${ECHO} PAGE_LEGAL for legal
	@${ECHO} PAGE_A4 for European/Australian A4
	@${ECHO} ""
	@${ECHO} by setting the enivonment variable PAGESIZE=PAGE_A4
	@${ECHO} or by the command \"make PAGESIZE=PAGE_A4\"
	@${ECHO} ""
	@${FALSE}
.endif
.endif

.include <bsd.port.mk>
