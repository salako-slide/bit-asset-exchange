;; Title: 
;; BitAssetXchange: Decentralized Content Marketplace on Stacks L2
;; Summary:
;; A trustless digital content exchange protocol enabling secure peer-to-peer transactions 
;; with Bitcoin-finalized settlements and Stacks Layer 2 efficiency.

;; Description:
;; BitAssetXchange implements an institutional-grade marketplace for digital assets using
;; Clarity's provable safety model. The protocol enables:
;; - Immutable content listings with proof-of-ownership
;; - STX-denominated transactions with adjustable platform fees
;; - Bitcoin-anchored audit trails via Stacks L2 consensus
;; - Reputation-based trader metrics with on-chain history
;; - Secure content access token management
;; Compliant with Bitcoin's security model through Stacks blockchain inheritance,
;; featuring non-custodial asset control and transparent settlement finality.

;; Constants
(define-constant owner-address tx-sender)
(define-constant ERR_UNAUTHORIZED (err u201))
(define-constant ERR_ITEM_UNAVAILABLE (err u202))
(define-constant ERR_DUPLICATE_ITEM (err u203))
(define-constant ERR_INSUFFICIENT_FUNDS (err u204))
(define-constant ERR_SELF_TRADE_BLOCKED (err u205))
(define-constant ERR_PRICE_INVALID (err u206))
(define-constant ERR_INPUT_INVALID (err u207))

;; Data Maps
;; Content offerings store the core metadata and trading parameters
(define-map content-offerings 
    { item-id: uint }
    {
        owner: principal,
        price-tag: uint,
        content-summary: (string-ascii 256),
        content-type: (string-ascii 64),
        tradeable: bool,
        creation-block: uint
    }
)